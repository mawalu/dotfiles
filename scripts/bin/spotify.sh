#!/bin/sh

if ! pgrep -x spotify >/dev/null; then
  echo ""; exit
fi

echo "$(playerctl metadata xesam:artist) - $(playerctl metadata xesam:title)"

