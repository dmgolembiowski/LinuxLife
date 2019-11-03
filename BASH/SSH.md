# Creating an SSH Public/Private Key Pair
```
noob@kali $ ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/noob/.ssh/id_rsa): /home/noob/.ssh/id_rsa_<nickname>
Enter passphrase (empty for no passphrase): *************
Enter same passphrase again: *************
Your identification has been saved in id_rsa.
Your public key has been saved in id_rsa.pub.
```

# Give the key to the appropriate destination server
```
cat ~/.ssh/id_rsa_xxx.pub | ssh -p 5555 n00b@123.45.56.78 "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
```
