#!/bin/bash

function setclip {
  xclip -selection c
}

function getclip {
  xclip -selection clipboard -o
}

file=$(mktemp)
#oldClip=$(getclip)
#xdotool key ctrl+x

#if [ "$oldClip" != "$(getclip)" ]; then
  #echo $(getclip) > $file
#fi

urxvt -e vim "$file"

cat $file | setclip
rm $file

xdotool key ctrl+v

