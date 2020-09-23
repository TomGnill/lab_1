#!/bin/bash
exit(){
 re='^-?[0-9]+$'
 if [["$1"=~$re]]; then
else 
 command exit 0
fi
}
