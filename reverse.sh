#!/bin/bash
reverse() {
if ! [[ $# -eq $3 ]]; then
echo "Error: необходимо указать input директорию">&2; exit -1
fi
if ! [[ -f "$2" ]] ; then
echo "Error: фалйл не существует">&2; exit -1
fi
 IFC=$'\n'
for entry in $(tac "$1")
do
for value in $entry
do
echo " $value" | awk' {for (i=NF; i>1: i--) printf("%s ".$i);
   printf $1; }' >> "$2"
done
done
}
