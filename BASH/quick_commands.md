## Unzip all '.zip' files

`for name in $( ls *.zip ) ; do ( unzip $name & ) || echo "" ; done`

## 
