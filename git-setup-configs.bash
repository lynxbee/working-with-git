#!/bin/bash
#run it as, bash git-setup-configs.bash
#GIT_USERNAME="Linuxbee Developer"
#GIT_USEREMAIL="social@lynxbee.com"
#The first thing you should do when you install Git is to set your user name and email address.

#if you get any error related to updating user name etc if it was
# already updated in your machine, use FORCE_UPDATE="--replace-all"

#FORCE_UPDATE="--replace-all"
FORCE_UPDATE=""

echo -n "Enter your Name : "
read GIT_USERNAME

echo -n "Enter your Email : "
read GIT_USEREMAIL

git config $FORCE_UPDATE user.name "$GIT_USERNAME"
git config $FORCE_UPDATE user.email "$GIT_USEREMAIL"
# using --replace-all, to prevent any error if already configured,
# so this will override previous

echo -n "do you want to set this user credentials to all gits on this computer ? (yes / no) "
read userinput
if  [ $userinput == "yes" ]; then
	echo "setting userdetails as global"
	git config --global $FORCE_UPDATE user.name "$GIT_USERNAME"
	git config --global $FORCE_UPDATE user.email "$GIT_USEREMAIL"
fi

echo -n "Which editor you want to use? (vim / emacs) "
read usereditor
git config $FORCE_UPDATE --global core.editor $usereditor

echo "Your configurations has been set for..."
git config --list
