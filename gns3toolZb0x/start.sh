#!/bin/bash

#i est la variable de choix
#j est la variable de status
#sorry for the poor quality of this bash script
#done this script on a sunday morning ;-)

###########
#Functions#
###########


message () {
echo "
  [+] Toolz B0x
  [-] 1 for web browser
  [-] 2 for global tcpdump
  [-] 3 for bash"
read -p "what is your chose ? " i
}


######
#Main#
######

while [ -z $j ]; do
  case $i in
  1) dhclient eth0 && elinks
    j=True
    ;;
  2) dhclient eth0; tcpdump -n -i eth0
    j=True
    ;;
  3) bash
    j=True
    ;;
  *) message 
   ;;
  esac
done
