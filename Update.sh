#!/bin/bash
## Really basic update script

clear
echo
echo "------ Getting Updates ------"
apt update
echo
echo "------ Listing Updates ------"
apt list --upgradeable
echo
echo "------ Apply Updates? ------"
apt upgrade
echo
echo "------ Clean Up ------"
apt autoremove
apt autoclean
apt clean

## Add in addional update or upgrade steps for other software
OPT 1: Inline text yes or no
## Custom Update or Upgrade Actions
echo "Do you want to do additional update or upgrade actions and reboot the system now?"
echo "	R. Reboot the system at the end of any operation."
select yn in "Yes" "No"; do
	case $yn in
		Yes ) sleep 10;
			sudo reboot;
            sudo apt autoremove;
            sudo apt autoclean;
			break;;
		no ) echo "Additional actions canceled.";
			echo "No reboot."; 
			exit;;
	esac
done
echo

OPT 2: Dialog box where needed (NOTE: Requires Dialog to be installed)
## Custom Update or Upgrade Actions
if (dialog --cr-wrap --title "Finish Update or Upgrade" --yesno "Do you want to take additional upgrade actions and reboot now? \n 1. EXTRA ACTIONS THAT WILL BE TAKEN LATER" 10 50)
# Message Box will be 10 lines high and 50 characters wide
then 
    ## Do Addional Actions
    # Extra action commands here
    echo
    echo "Rebooting system in 10 Seconds"
    sleep 10
    sudo reboot
else 
    echo
    echo "Reboot Canceled."
    echo "NOTE: Some updates do require a reboot to apply"
fi
