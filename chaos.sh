#!/bin/bash

W=799
H=599

xmodmap -pke | grep -i control | sed 's/Control_[LR]//g' | xmodmap -

while true; do
    dx=$(( RANDOM % 100 - 50 ));
    dy=$(( RANDOM % 100 - 50 ));
    c=$(( RANDOM % 3 + 1 ));
    xte 'mousermove '$dx' '$dy'';
    xte 'mouseclick '$c'';
done
