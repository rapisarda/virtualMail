#!/bin/sh

mailPath=$1;
prefix=$2;
overwrite=$3;

if [ -z "$prefix" ]; then 
    prefix='mail';
fi
if [ -z "$overwrite" ]; then 
    overwrite=true;
fi

if [ false = $overwrite ]; then
    i=1;
    while  [ -e $mailPath/$prefix-$i.eml ]; do
        i=$(($i+1));
    done
    name=$mailPath/$prefix-$i.eml;
    else
    name=$mailPath/$prefix;
fi

while IFS= read line
do
	echo "$line" >> $name
done

chmod 777 $name
/bin/true
