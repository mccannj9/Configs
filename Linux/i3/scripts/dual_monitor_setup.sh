#! /usr/bin/env bash

xrandr | grep 'HDMI-1 connected' && xrandr --output eDP-11 --auto --output HDMI-1 --auto --right-of eDP-1
