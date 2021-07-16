#### LM CQRlog installers.
    
LEGAL NOTICE!!!!!
Be for we go any further.... I am not in anyway responsible if you use this script.
I wrote this to install everything in a few minutes on my own system.
Although it's tested a lot, I can not guarantee that it will work on your system.
This is due to me testing it on a clean, fresh out of the box system.
I cannot test if you have other software installed that might interfere with this script.

#### Supported versions...
As the changes in OS and the repositories of bot LM and CQRlog were too much for me to bother to check out backwards compatibility, 
This is only supported on LM20.1 (and probably upwards)


#### The files......

#### A) LM_CQRlog_Installer.sh
This is the installer script that installs CQRlog and puts the user in the dialout group among things.

#### B) LM_CQRlog_installer_incl_HAMlib.sh
This is the installer script that installs CQRlog and puts the user in the dialout group among things.
As a bonus feature it installs HAMlib 4.1

#### C) LM_HAMlib_installer.sh
This file only installs HAMlib 4.1 (or 4.0) as 3.3 is still the "current" version in the repo of linuxmint.
For newer tranceivers we need something more current.


#### How to use this script......

1.  place the file in your home folder.
2.  Open a terminal
3.  Navigate to the folder
4.  Type: sudo chmod +x *.sh  (will ask you for a password.)

5.  A)type: sudo ./LM_CQRlog_Installer.sh

    B)type: sudo ./LM_CQRlog_Installer_incl_HAMlib.sh

    C)type: sudo ./LM_HAMlib_installer.sh

6.  After the script is finished IT WILL REBOOT YOUR COMPUTER!!! 
    if this is not done, this wil not work. 
    DO not try to cancel this and start CQRlog, this will mess stuff up!!
    LET IT REBOOT!! can not stress this enough :)

    After the install of the HAMlib script, i am restarting the computer as well. 
    This is for as far i am aware not needed. But i think its better after compiling all and when 3.3 was allready there, 
    it's better to reboot so that all software that was allready started is pointing to the proper hamlib for sure.


#### So What does the CQRlog scripts do.......
- Add OK2CQR repository to your system so we can install it, and update it in the future using the normal update manager in Cinnamon
- Update the apt cache
- Install CQRlog (Including mariadb!)
- Install X-Planet and X-Planet-images
- Checks if the user is a dialout member, if not he will be.
- If you run the "incl_HAMlib" version: Download HAMlib 4.0 (you can configure the version in the script if a newer version has been released)
- If you run the "incl_HAMlib" version: Install HAMlib 4.0
- Cleaning up some temp stuff
- Forcing a reboot in 30 seconds after it finishes

#### So What does the LM_HAMlib script do.......
- It downloads the correct tar.gz file
- Unpacks it
- Configures and make
- cleans up som stuff
- and in the end you will have a working HAMlib 4.1 on your linuxmint 20.1 system

#### The scripts are tested on:
- LM20.1

test
