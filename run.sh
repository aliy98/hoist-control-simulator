#!/bin/bash
while true; do
    read -p "Are you sure to run it?(y/n) " yes
    case $yes in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
if [ -z "$ARPPATH" ]
  then
    echo "error: Run bashrc or open a new terminal and then execute run.sh again"
  else
    cd $ARPPATH
    ./main/main
    sleep 0.5
    ./watchdog/watchdog
fi

