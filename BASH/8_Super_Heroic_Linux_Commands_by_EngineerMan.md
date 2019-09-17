# Copy all mp3 files from absolute path to current directory 
```
david@debian $ find /home/david/music -name "*.mp3" -exec cp -i {} . \;
```
<br />

# Redo last command but as root
```
david@debian $ sudo !!
```
<br />

# Open an editor to run a command that would be easier to write in a terminal
```
david@debian $ <CTRL + x + e>
```
<br />

# Create a super-fast ram disk

```
Example:
root@debian # mkdir ram
root@debian # cd ram/
root@debian # dd if=/dev/zero of=test.iso bs=1M count=8000
8000+0 records in
8000+0 records out
8388608000 bytes (8.4 GB, 7.8 GiB) copied, 44.2673 s, 189 MB/s
root@debian # rm test.iso
root@debian # cd ..
root@debian # mount -t tmpfs tmpfs /mnt/ram -o size=8192M
root@debian # cd ram/
root@debian # dd if=/dev/zero of=test.iso bs=1M count=8000
8000+0 records in
8000+0 records out
8388608000 bytes (8.4 GB, 7.8 GiB) copied, 2.59548 s, 3.2 GB/s

Crux:
root@debian # mkdir -p /mnt/ram
root@debian # tmpfs tmpfs /mnt/ram -o size=8192M
```
<br />

# Create an evil command that will not get stored in bash history

```
david@debian $ <space character>hack --path /central/algorithims/* --time=0; 
```
<br />

# Fix a really long command that you messed up

```
david@debian $ fc
```
<br />

# Tunnel with ssh (local port 3337 -> remote host's 127.0.0.1 on port 6379)

```
david@debian $ ssh -L 3337:127.0.0.1:6379 root@vk.ai -N
```
<br />

# Quickly create (many, many) folders

```
david@debian $ mkdir -p folder/{static,templates}/{etc,styling,scripts}
david@debian $ tree folder
folder
├── static
│   ├── etc
│   ├── scripts
│   └── styling
└── templates
    ├── etc
    ├── scripts
    └── styling
```
<br />

# Quickly create required base files for Python repositories

```
david@debian $ touch {graphDB,columnStore,kvStore}/__init__.py
david@debian $ ls columnStore
__init__.py
```
<br />

# Intercept stdout and log to file (Really useful for monitoring)

```
david@debian $ cat file | tee -a log | cat > /dev/null
```
<b />


# Exit terminal... but leave all processes running
```
david@debian $ disown -a && exit
```
<br />

# Restart a legacy JBoss instance without closing it
```
priv_user@server # <script_name>.sh && disown -a && exit
```
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
Credits: "Engineer Man" Channel on YouTube
