#!/bin/bash
banner(){
echo "########################################################"
echo "			       Adnan's Tools						  "
echo "########################################################"
}

message(){
echo "Enter 1 For Your IP Address"
echo "Enter 2 For Your MAC Address"
echo "Enter 3 For Target Domain IP Address"
echo "Enter 0 For Exit Tools"
}
main(){
read -p "Select Your Option:" a
if [ $a == 1 ];
then
	echo "Your IP Address Is: "$(hostname -i)
elif [ $a == 2 ];
then
	echo "Your MAC Address Is: "$(ip link show eth0 | grep link/ether | awk '{print $2}')
elif [ $a == 3 ];
then
	read -p "Write Your Target Domain Name: "domain
	echo "%domain IP Address IS: "$(ping -c 2 $domain | awk '{print $5}')
elif [ $a == 0 ];
then
	exit
else echo "Wrong Option!"
fi
}

for ((; ;))
do
banner
message
main
done
	