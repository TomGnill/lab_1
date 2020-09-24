#!/bin/bash
 calc() {
function sum(){
echo $(($3 + $4))
}
function sub(){
echo $(($3 - $4))
}
function mul(){
echo $(($3 * $4))
}
 re='^-?[0-9]+$'
 if ! [[ $# -eq 4 ]];then
   echo "Error: количество аргументов слишком большое/мало">&2; exit -4
 fi
 if [[ "$2" != "sum" && "$2" != "mul" && "$2" != "sub" && "$2" != "div" ]]; then
   echo "Error: такого действия нет" >&2; exit  -5
 fi
 if ! [[ "$3" =~ $re && "$4" =~ $re ]]; then
   echo"Error: для корректной работы calc необходимо ввести 2 целых числа." >&2; exit -4
 fi
 if [[ "$2" == "div" && "$4" == "0" || "-0" ]]; then
   echo"Error: На ноль делить нельзя!" >&2; exit -4
 fi
case $2 in
 sum)
  sum
 ;;
 sub)
  sub
 ;;
 mul)
  mul
 ;;
 div)
   div"$3/$4" | bc -l
 ;;
  esac
}
