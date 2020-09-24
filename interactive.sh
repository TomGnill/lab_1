#!/bin/bash
interactive() {
echo" Вас приветствует интерактивный режим labOS, не пытайтесь меня сломать, ибо всё что я умею
в этой жизни это дышать(
Введите букву для выбора действия, или его название:

c\ -"calc"
s\ -"search"
r\ -"reverse"
n\ -"strlen"
l\ -"log"
для подробного описания введите \h -"help"
Для выхода из программы e\ -"exit"
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
 calc "$calc_command" "$first" "$second"
 fi
echo " "
interactive
;;
 s|search)
  if [ "$sea_er" = "1" ]; then
  echo "Error:  действие недоступно" >&2;
  interactive 
  fi
  echo"Введите слово или выражение:"; read sea_str
  echo"Введите директорию поиска:"; read sea_dir
 if ! [ -d "$sea_dir" ]; then
  echo"Error: директории несуществует" >&2;
  interactive
fi
  search "$sea_str" "$sea_dir"
  echo " "
  interactive
;;
 r|reverse)
  if [ "$rev_er" = "1" ]; then
   echo "Error: действие недоступно" >&2;
  interactive
   echo"Введите название папки с файлом"; read rev_dir1
   echo"Введите название папки в которую файл будет перенесён"; read rev_dir2
  fi
  reverse "$rev_dir1" "$rev_dir2"
  echo" "
  interactive
;;
esac
}
