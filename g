#!/bin/bash
function help {
      echo "Launch google in new window"
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

#Actual functionality goes here.
google-chrome-stable --new-window  --profile-directory=Default
exit 0
