#!/bin/sh

which grep > /dev/null 2> /dev/null

if test "$?" != "0"
then
	echo "\"grep\" command not found."
	echo "Installation is aborted."
	exit 1
fi

echo "--------------------------------------------------------------------"
echo
echo "SoftEther VPN Server (Ver 4.34, Build 9745, Intel x64 / AMD64) for Linux Install Utility"
echo "Copyright (c) SoftEther Project at University of Tsukuba, Japan. All Rights Reserved."
echo
echo "--------------------------------------------------------------------"
echo
echo
echo "Do you want to read the License Agreement for this software ?"
echo
echo " 1. Yes"
echo " 2. No"
echo
echo "Please choose one of above number: "
read tmp
echo

if test "$tmp" != "1"
then
	echo "Installation is aborted."
	exit 1
fi

cat ReadMeFirst_License.txt

echo 
echo "Did you read and understand the License Agreement ?"
echo "(If you couldn't read above text, Please read 'ReadMeFirst_License.txt'"
echo " file with any text editor.)"
echo
echo " 1. Yes"
echo " 2. No"
echo
echo "Please choose one of above number: "
read tmp
echo

while true
do
	if test "$tmp" = "2"
	then
		echo "Installation is aborted."
		exit 1
	fi
	if test "$tmp" = "1"
	then
		break
	fi
	echo "Please choose one of above number: "
	read tmp
	echo
done

echo 
echo "Did you agree the License Agreement ?"
echo
echo 1. Agree
echo 2. Do Not Agree
echo
echo "Please choose one of above number: "
read tmp
echo

if test "$tmp" != "1"
then
	echo "Installation is aborted."
	exit 1
fi

make i_read_and_agree_the_license_agreement

exit 0

