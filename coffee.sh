#!/bin/bash

W=799
H=599
x=0
y=0

while true; do
    y=$(( (y + 10) % H ));        
    x=$(( (x + 10) % W ));        
    xte 'mousemove '$x' '$y'';
    sleep 0.005;
done
