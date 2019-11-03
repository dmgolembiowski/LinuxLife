# Move random_file{2, 3, 4}.vim into parent-directory 

```
david@debian $ tree parent-directory
parent-directory
├── random_file.vim
└── sub-directory
    ├── random_file2.vim
    ├── random_file3.vim
    └── random_file4.vim

david@debian $ find . -mindepth 2 -type f -print -exec mv --backup=numbered {} . \;

david@debian $ tree parent-directory
parent-directory
├── random_file.vim
├── random_file2.vim
├── random_file3.vim
└── random_file4.vim
```
<br />

<<<<<<< HEAD
# Get names of all files matching a pattern given a path, and writitng them to some destination path

```
david@debian$ ls -ltr *vim 2>/dev/null | awk '{print $9}' > $destination_path/manything.vim
=======
# Creating a symlink to another directory path, X, in the current directory

```
david@debian $ ln -s X .
>>>>>>> d1bf3c71f6c075950316af75c489c318f9beafc7
```
