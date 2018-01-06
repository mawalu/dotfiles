#!/bin/sh
if [[ -a ~/.is-laptop ]]; then
  rofi -combi-modi drun -show combi -modi combi
else
  rofi -combi-modi drun -monitor DVI-I-1 -show combi -modi combi
fi

