#!/bin/bash 
reverse() {

 IFC=$'\n'
for entry in $(tac "$1")
do
for value in $entry
do
echo " $value" |
 done
done
}
