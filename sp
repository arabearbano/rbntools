#!/bin/bash
function help {
      echo "ncspot app"
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
    * )
      echo "Invalid argument: ${!i}"
      help
      exit 2
      ;;
  esac
done;

#Actual functionality goes here.
app "spotify" ncspot
exit 0
