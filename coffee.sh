#!/bin/bash

if command -v xte >/dev/null; then
    xmove() { xte 'mousemove '$1' '$2'' ; }
elif command -v xdotool >/dev/null; then
    xmove() { xdotool 'mousemove' '--' $1 $2 ; }
else
    echo 'xte or xdotool is required but none of them is installed.  Aborting'
    exit 1
fi

res=`xrandr |grep \* |awk '{print $1}'`
if [ $? -eq 0 ] && [ -n $res ]; then
    W=${res%x*}
    H=${res#*x}
else
    W=799
    H=599
fi

x=0
y=0

while true; do
    y=$(( (y + 10) % H ));        
    x=$(( (x + 10) % W ));        
    xmove $x $y
    sleep 0.005;
done
