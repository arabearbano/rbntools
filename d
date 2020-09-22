#!/bin/bash
function help {
      echo "Add a new todo item"
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

t -t add "$@"

exit 0
