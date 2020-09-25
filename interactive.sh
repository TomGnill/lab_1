#!/bin/bash
interactive() {
echo "Вас приветствует интерактивный режим labOS, не пытайтесь меня сломать, ибо всё что я умею
 в этой жизни это дышать

Введите букву для выбора действия, или его название:
 c\ - "calc"
 s\ - "search"
 r\ - "reverse"
 n\ - "strlen"
 l\ - "log"
 для подробного описания введите h -help
 Для выхода из программы e - exit
 "
read command
case $command in
 c|calc)
 if [ "$calc_er" = "1" ]; then
  echo "Error: действие недоступно." >&2;
  interactive
 fi
 echo "выберите действие:sum(+)/sub(-)/mul(*)/div(/):"; read calc_command
 echo "первое число:"; read first
 echo "второе число:"; read second
 echo "Ответ:"; calc "$calc_command" "$first" "$second"
 echo " "
 interactive
;;
 s|search)
  if [ "$sea_er" = "1" ]; then
  echo "Error:  действие недоступно" >&2;
  interactive
  fi
  echo "Введите директорию поиска:"; read sea_dir
  echo "Введите выражение:"; read sea_str
 if ! [ -d "$sea_dir" ]; then
  echo "Error: директории несуществует" >&2;
  interactive
fi
  search "$sea_dir" "$sea_str"
  echo " "
  interactive
;;
 r|reverse)
  if [ "$rev_er" = "1" ]; then
   echo "Error: действие недоступно" >&2;
  interactive
   echo "Файл ввода:"; read rev_fil1
   echo "Файл вывода:"; read rev_fil2
  fi
  reverse "$rev_fil1" "$rev_fil2"
  echo" "
  interactive
;;
 n|strlen)
  if [ "$str_er" = "1" ]; then
   echo "Error: действие недоступно" >&2;
   interactive
  fi
   echo "Введите строку:"; read string
   strlen  "$string"
   echo " "
   interactive
;;
 l|log)
  if [ "$log_er" = "1" ]; then
   echo"Error: действие недоступно" >&2;
   interactive
  fi
    log "/var/log/anaconda/X.log"
    echo " "
    interactive
;;
 e|exit)
  if [ "$exi_er" = "1" ]; then
  echo "Error: действие недоступно" >&2;
  interactive
  fi
   command exit 0
;;
 h|help)
  if [ "$hel_er" = "1"]; then
   echo "Error: действие недоступно" >&2;
   interactive
  fi
   help
   interactive
;;
 *)
   echo "Вы выбрали несуществующее действие" >&2;
   interactive
;;
esac
}
