#!/bin/bash
hd_size=`df -h /home/pi | awk -F' ' '{print $2}' | grep G | cut -d'G' -f1`
 if [[ $hd_size -lt 40 ]]
  then
            echo "low on space  on `date` take action for this " 

            echo "mail is sent now please check inbox"  
    else
	   echo "enough space on machine" 
  fi
