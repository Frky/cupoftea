#!/bin/bash

W=799
H=599

while true; do
    dx=$(( RANDOM % 100 - 50 ));
    dy=$(( RANDOM % 100 - 50 ));
    c=$(( RANDOM % 3 + 1 ));
    xte 'mousermove '$dx' '$dy'';
    xte 'mouseclick '$c'';
done
