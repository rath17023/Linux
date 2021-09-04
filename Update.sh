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
## Add in addional update or upgrade steps for other software
echo
echo "------ Clean Up ------"
apt autoremove
apt autoclean
apt clean
