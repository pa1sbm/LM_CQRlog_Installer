#!/bin/bash


########################################################################################
#
# These scripts are build by Alex, PA1SBM.
#
# These scripts were build for own use, and are made available for public use.
#
# For further info please look at: https://github.com/pa1sbm
#
########################################################################################



#First we check if we are running in root......
clear
if [ "$EUID" -ne 0 ]
  then 
  echo "Please run script with sudo!"
  echo "like this: user@hostname:~$ sudo ./LM_CQRlog_installer_incl_HAMlib.sh "
  echo "your password will be asked...."
  exit
else
  echo "Check on root priviliges succesfull!"
  echo "Starting installation"
fi

## Some settings you can edit

##HAMlib version to download
## Here you can set which version to install (4.0/4.1 should both work)
VER=4.1


## generating some variables
## Do not touch these....
## Seriously, DO NOT CHANGE!
FILE=hamlib-$VER.tar.gz
FOLDER=hamlib-$VER
LINK=https://github.com/Hamlib/Hamlib/releases/download/$VER/$FILE


####### Installing HAMlib.

#installing build tools
clear
echo "Installing essential compiling tools"
sleep 5
apt-get -y install build-essential autoconf

#download hamlib
clear
echo "downloading HAMlib library version $VER"
sleep 5
curl -kLo $FILE $LINK

#unzipping
clear
echo "Unpacking HAMlib package" 
tar xvzf $FILE

#changing to folder
cd $FOLDER

#configuring 
clear
echo "Configuring installation for HAMlib"
sleep 5
./configure --disable-static

#running make
clear
echo "Making the installation"
sleep 5
make

#checking the make
clear
echo "Checking the installation"
sleep 5
make check

#running the install
clear
echo "Running the actual install"
sleep 5
make install

#updating the ld.so.cache
clear
echo "Updating the ld.so.cache"
sleep 5
ldconfig

#cleaning stuff
clear
echo "Cleaning up the make process"
sleep 5
make clean


#cleaning up
clear
echo "Cleaning up temporarly files"
rm -R $FOLDER
rmdir $FOLDER
rm $FILE


#Done installing.
clear
echo "****************************************************"
echo "****************************************************"
echo "**             Installation is finished           **"
echo "**    FORCE REBOOTING YOUR SYSTEM IN 30 SECONDS ! **"
echo "****************************************************"
echo "****************************************************"


sleep 30
reboot