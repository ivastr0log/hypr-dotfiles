#!/bin/bash

song_info=$(playerctl metadata --format '{{artist}} - {{title}}')

if [[ $song_info = "" ]]; then
  echo ""
else
  echo "    |  $song_info"
fi
