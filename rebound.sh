#!/bin/bash

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
    xte 'mousemove '$x' '$y'';
    sleep 0.005;
done
