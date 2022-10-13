#!/bin/bash 
if [ -z "$ARPPATH" ]
  then
    echo "error: run bashrc after installation"
  else
    cat project_description.txt $ARPPATH/main/description.txt $ARPPATH/command_console/description.txt $ARPPATH/inspection_console/description.txt $ARPPATH/motor_x/description.txt $ARPPATH/motor_z/description.txt $ARPPATH/watchdog/description.txt $ARPPATH/logfiles/description.txt | more -d
fi
