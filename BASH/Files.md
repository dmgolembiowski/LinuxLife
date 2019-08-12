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


