Redo last command but as root
```david@debian $ sudo !!```

Open an editor to run a command that would be easier to write in a terminal
```david@debian $ <CTRL + x + e>```

Create a super-fast ram disk
```root@debian $ mkdir -p /mnt/ram```
```root@debian $ tmpfs tmpfs /mnt/ram -o size=8192M```

Create evil command that doesn't get stored in bash history
```david@debian $ <space character>echo "iwalton3 can't even type(oooo burn)"```

Fix a really long command that you messed up
```david@debian $ fc```

Tunnel with ssh (local port 3337 -> remote host's 127.0.0.1 on port 6379)
```david@debian $ ssh -L 3337:127.0.0.1:6379 root@dgolembiowski.com -N```

Quickly create (many, many) folders
```david@debian $ mkdir -p folder/{static, templates}/{etc, styling, scripts}```

Intercept stdout and log to file (Really useful for monitoring)
```david@debian $ cat file | tee -a log | cat > /dev/null```

Exit terminal... but leave all processes running
```david@debian $ disown -a && exit```










Credits: "Engineer Man" Channel on YouTube
