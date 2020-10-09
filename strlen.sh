#!/bin/bash
strlen() {
if ! [[ $# -eq 1 ]]; then
echo "Error: для правильной работы укажите строку, если строка содержит пробел попробуйте добавить ковычки">&2; exit -3
fi
if [[ -z "$1" ]]; then
echo "0"
fi
if [[ $1 -eq 0 ]] ; then
echo "Error: вы не передали строку">&2 ; exit -2
fi
   string="$@"
   echo "${#string}"
}
