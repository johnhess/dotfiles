#!/bin/sh

dir="$1"
chsum1=""

while [[ true ]]
do
    chsum2=`find $dir -type f -exec md5 {} \;`
    if [[ $chsum1 != $chsum2 ]] ; then           
        # clear
        eval $2
        
        # ignore changes during run cycle
    	chsum2=`find $dir -type f -exec md5 {} \;`
        chsum1=$chsum2
    fi
    sleep 2
done
