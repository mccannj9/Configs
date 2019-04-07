#!/bin/sh
CURRBRIGHT=$(xrandr --current --verbose | grep -m 1 'Brightness:' | cut -f2- -d:)
if [ "$1" = "u" ] && [ $(echo "$CURRBRIGHT < 1" | bc) -eq 1 ] 
then
    xrandr --output $2 --brightness $(echo "$CURRBRIGHT + 0.05" | bc)
elif [ "$1" = "d" ] && [ $(echo "$CURRBRIGHT > 0" | bc) -eq 1 ] 
then
    xrandr --output $2 --brightness $(echo "$CURRBRIGHT - 0.05" | bc)
fi
