#!/bin/bash
# A generic bash setup script for configuring a computer
# and prepping it to take orders from another computer

function add_sbin {
  apt-get install net-tools && export PATH=$PATH:/usr/sbin/
}

function array_of_interfaces {
	interfaces=()
	for iface in $(ifconfig | cut -d ' ' -f1| tr ':' '\n' | awk NF); do
		interfaces=(${interfaces[@]} "$iface")
	done
}

function networking {
	# Get `interfaces` string -> array of strings
	# Access fields using: "${interfaces[@]}"
	array_of_interfaces 


	# Next, iterating over each of the `interfaces`
	# and capturing relevant fields, like IPv4 (inet),
	for ifce in "${interfaces[@]}"; do
		# "e" for eth0/elp4s0
		# "l" for lo
		# "w" for wlan/wlan0/wlp5s0
		initial_char="$(echo $ifce | head -c 1)"
		if [[ "$initial_char" == "e" ]]; then
			# Ethernet details...
			ethernet=$(ifconfig "$ifce" | grep "ether " | sed -e 's/^[[:space:]]*//')
			ethernet=$(echo $ethernet | cut -d ' ' -f2)
			echo "Ethernet: $ethernet"
			mac_ethernet=$(ifconfig $ifce | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')
			echo Ethernet MAC: $mac_ethernet
			eth_name=$ifce

		elif [[ "$initial_char" == "l" ]]; then
			# Lo interface details
			lo=$(ifconfig "$ifce" | grep "inet " | sed -e 's/^[[:space:]]*//')
			lo=$(echo $lo | cut -d ' ' -f2)
			echo "Lo: $lo"
			mac_lo="None"
			lo_name="lo"

		elif [[ "$initial_char" == "w" ]]; then
			# IPv4 IP/MAC details...
			wireless=$(ifconfig "$ifce" | grep "inet " | sed -e 's/^[[:space:]]*//')
			wireless=$(echo $wireless | cut -d ' ' -f2)
			echo "WiFi IPv4: $wireless"
			mac_wireless=$(ifconfig $ifce | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')
			echo "WiFi MAC: $mac_wireless"
			wifi_name=$ifce

		else
			echo "Unknown networking interface detected: $ifce"
		fi
	done
	
	# Next, creating "interfaces.csv", with headers:
	# "type" | "value" | "mac_address"
	
	# This first one should always overwrite
	# any existing files with that name
	echo -e "type,name,value,mac_address" > interfaces.csv
	# The remainder should just append to that file
	echo -e "ethernet,$eth_name,$ethernet,$mac_ethernet" >> interfaces.csv
	echo -e "wireless,$wifi_name,$wireless,$mac_wireless" >> interfaces.csv
	echo -e "lo,$lo_name,$lo,$mac_lo" >> interfaces.csv
}

function main {
	# Install net-tools from apt, then configure PATH
  add_sbin
  
	# Next, do networking
	networking
	echo "Networking details written to ./interfaces.csv"
}
main
