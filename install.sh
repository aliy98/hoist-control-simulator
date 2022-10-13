#!/bin/bash
while true; do
    read -p "Do you wish to install this program?(y/n) " ans
    case $ans in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
if [ $# -eq 0 ]
  then
    echo "error: No install path supplied"
  else
    #if [ -z "$ARPPATH" ]
      #then
        export ARPPATH=$1
        unzip sources_archive.zip -d $ARPPATH
        cd $ARPPATH
        cd sources_archive
        gcc main/main.c -o main/main
        gcc inspection_console/inspection_console.c -o inspection_console/inspection_console
        gcc motor_x/motor_x.c -o motor_x/motor_x
        gcc motor_z/motor_z.c -o motor_z/motor_z
        gcc command_console/command_console.c -o command_console/command_console
        gcc watchdog/watchdog.c -o watchdog/watchdog
        echo "Successfully installed in $ARPPATH"
        echo "export ARPPATH=$(pwd)" >> ~/.bashrc
      #else
        #echo "error: the program is already installed in $ARPPATH"
    #fi
fi


