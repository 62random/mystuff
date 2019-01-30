#!/bin/bash
state=$(xinput --list-props 13 | grep 'Device Enabled' | grep -o '.$')

if [ $state == '1' ]
then 
    xinput --disable 13
else
    xinput --enable 13
fi 
