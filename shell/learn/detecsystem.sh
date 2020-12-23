#!/bin/bash
sysOS=`uname -s`
if [ $sysOS == "Darwin" ];then
	echo "I'm MacOS"
elif [ $sysOS == "Linux" ];then
	echo "I'm Linux"
else
	echo "Other OS: $sysOS"
fi
