#!/bin/bash
function help {
      echo "Mark todo item as done"
      echo " ? --help print this help"	
}


for ((i=1;i<=$#;i++));
do
  parameter=${!i}
  case $parameter in
    [?] | --help )
      help
      exit 2
      ;;
  esac
done;

t do "$@"

exit 0
