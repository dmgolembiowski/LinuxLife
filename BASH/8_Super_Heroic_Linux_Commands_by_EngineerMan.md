Redo last command but as root<br />
```david@debian $ sudo !!```
<br />
<br />
Open an editor to run a command that would be easier to write in a terminal<br />
```david@debian $ <CTRL + x + e>```
<br />
<br />
Create a super-fast ram disk<br />
```root@debian $ mkdir -p /mnt/ram```<br />
```root@debian $ tmpfs tmpfs /mnt/ram -o size=8192M```<br />
<br />
Create evil command that doesn't get stored in bash history<br />
```david@debian $ <space character>echo 'iwalton3 can\'t even type (oooo burn)'```<br />
<br />
Fix a really long command that you messed up<br />
```david@debian $ fc```<br />
<br />
Tunnel with ssh (local port 3337 -> remote host's 127.0.0.1 on port 6379)<br />
```david@debian $ ssh -L 3337:127.0.0.1:6379 root@dgolembiowski.com -N```<br />
<br />
Quickly create (many, many) folders<br />
```david@debian $ mkdir -p folder/{static, templates}/{etc, styling, scripts}```<br />
<br />
Intercept stdout and log to file (Really useful for monitoring)<br />
```david@debian $ cat file | tee -a log | cat > /dev/null```<br />
<br />
Exit terminal... but leave all processes running<br />
```david@debian $ disown -a && exit```<br />
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
