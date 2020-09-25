#!/bin/bash
search(){
if ! [[ $# -eq 2 ]]; then
echo "Error: для корректной работы search необходимо ввести слово и название директории">&2; exit -1
fi
if ! [[ -d $1 ]]; then
echo "Error: такой директории не существует." >&2; exit -2
fi
  grep -r "$2" "$1"

}

