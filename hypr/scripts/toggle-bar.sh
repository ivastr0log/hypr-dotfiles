#!/bin/sh

pgrep -x waybar
status=$?
if test $status -eq 0
then
  killall eww
else
  waybar
fi
