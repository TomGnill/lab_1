#!/bin/bash
calc() {
if ["$er_calc" = "1"]; then 
   echo "Error: такого действия нет.">&2; exit -5
 fi
 re='^-?[0-9]+$'
 if ![[ $# -eq4 ]];then
   echo "Error:количество аргументов слишком большое/мало">&2; exit -4
 fi
 if [["$2" !="sum" && "$2" !="null" && "$2" !="sub" && "$2" !="div" ]]; then
   echo "Error: такого действия нет">&2; exit  -5
 fi
 if ![["$3" =~$re && "$4" =~ $re]]; then
   echo"Error: для корректной работы calc необходимо ввести 2 целых числа.">&2 exit -4
 fi 
 if [["$2" == "div" && "4" == "0"||"-0"]]; then 
   echo"Error:На ноль делить нельзя!">&2; exit -4

  sum() {
   echo $(($3 + $4))
  }

  sub() {
   echo $(($3 - $4))
  }

  mul() {
   echo $(($3 - $4))
  }
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
   div"$3/$4"|bc -l
 ;;
   esac
}
