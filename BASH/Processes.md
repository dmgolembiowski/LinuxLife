# The Joys of Processes

# Get all of your currently-running processes
<br />
```
david@debian $ ps -ef

UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 17:00 ?        00:00:05 /sbin/init
root         2     0  0 17:00 ?        00:00:00 [kthreadd]
root         3     2  0 17:00 ?        00:00:00 [rcu_gp]
root         4     2  0 17:00 ?        00:00:00 [rcu_par_gp]
root         6     2  0 17:00 ?        00:00:00 [kworker/0:0H-kblockd]
```
<br />
# Get the process ID number of any running 'gnome' process
```
david@debian $ ps -ef | grep gnome

david     1193     1  0 17:01 ?        00:00:00 /usr/bin/gnome-keyring-daemon --daemonize --login
david     1271  1180  0 17:01 ?        00:00:02 /usr/lib/at-spi2-core/at-spi2-registryd --use-gnome-session
david     1446  1180  0 17:01 ?        00:00:00 /usr/lib/gnome-online-accounts/goa-daemon
david     1495  1180  0 17:01 ?        00:00:00 /usr/lib/gnome-online-accounts/goa-identity-service
david     2147  1180  0 17:01 ?        00:00:00 /usr/bin/gnome-keyring-daemon --start --foreground --components=secrets
david    26034 25791  0 23:11 pts/0    00:00:00 grep gnome
```
<br />

# Accidentally used CTRL+z during Vim editing:
```
david@debian $ vim example.txt`
*accidentally hits CTRL+z*
[1]+  Stopped                 vim example.txt
```
<br />

# Grab its process ID using:
```
david@debian $ ps -ef | grep vim`
david    26232 25791  0 23:12 pts/0    00:00:00 vim example.txt
```
<br />

# Go back into this particular Vim session using:
```
david@debian $ % fg %26232`
```
<br />
# Suppose you wanted to kill a process (like leafpad):
```
david@debian $ pkill leafpad`
```
<br />
