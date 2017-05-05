#!/bin/bash

if command -v xte >/dev/null; then
    xmove() { xte 'mousermove '$1' '$2'' ; }
    xclick() { xte 'mouseclick' $1 ; }
elif command -v xdotool >/dev/null; then
    xmove() { xdotool 'mousemove_relative' '--' $1 $2 ; }
    xclick() { xdotool 'click' $1 ; }
else
    echo 'xte or xdotool is required but none of them is installed.  Aborting'
    exit 1
fi

xmodmap -pke | grep -i control | sed 's/Control_[LR]//g' | xmodmap -

while true; do
    dx=$(( RANDOM % 100 - 50 ));
    dy=$(( RANDOM % 100 - 50 ));
    c=$(( RANDOM % 3 + 1 ));
    xmove $dx $dy;
    xclick $c;
done
