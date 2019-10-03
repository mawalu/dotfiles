#!/bin/sh
if [[ -a ~/.is-laptop ]]; then
  rofi -combi-modi drun -show combi -modi "combi,Playnext:play_next.sh"
else
  rofi -combi-modi drun -show combi -modi "combi,Playnext:play_next.sh"
fi

