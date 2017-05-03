#!/bin/bash

if command -v xte >/dev/null; then
    xmove() { xte 'mousemove '$1' '$2'' ; }
elif command -v xdotool >/dev/null; then
    xmove() { xdotool 'mousemove' '--' $1 $2 ; }
else
    echo 'xte or xdotool is required but none of them is installed.  Aborting'
    exit 1
fi

W=799
H=599
x=0
y=0

dx=10
dy=10

while true; do
    y=$(( (y + dy) ));        
    x=$(( (x + dx)  )); 
    if [[ ( $x -lt 0 ) || ( $x -gt $W ) ]]; then
        dx=$(( -dx ));
    fi;
    if [[ ( $y -lt 0 ) || ( $y -gt $H ) ]]; then
        dy=$(( -dy ));
    fi;
    xmove $x $y;
    sleep 0.005;
done
