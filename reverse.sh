#!/bin/bash
reverse() {
if ! [[ -f "$1" ]]; then
echo "Error: файл не существует">&2; exit -1
fi
if ! [[ -f "$2" ]] ; then
echo "Error: файл не существует">&2; exit -1
fi
 touch $2 &> /dev/null
 tac $1 > $2
}
