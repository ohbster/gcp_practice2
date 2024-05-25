#!/bin/bash
#SET the web password from inside terraform
#user webuser
WEBPASS='myrandomstring!@!' # TODO: need to pull this value from secrets. Change this to what oyu want
#WORKDIR="/root"
sudo apt-get update

# Ignore any intereactive dialog when doing upgrade
# sudo DEBIAN_FRONTEND=noninteractive sh -c 'echo $DEBIAN_FRONTEND'
DEBIAN_FRONTEND=noninteractive sudo apt-get upgrade -yq 

#install git
apt install git -y #&& \

# work from the home directory and clone tpot
#cd $ADMINHOME
# cd $WORKDIR
# git clone https://github.com/telekom-security/tpotce.git && \
# myQST=y myTPOT_TYPE="HIVE" myWEB_PW=$WEBPASS myWEB_PW2=$WEBPASS ./install.sh --type=auto
# systemctl start tpot && \
# systemctl enable tpot && \
# rm $WORKDIR/tpot.conf && \
# /sbin/reboot
