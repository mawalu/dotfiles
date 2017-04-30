#!/bin/bash
function main
{
  local url=$1  

  if [[ $url == *"youtube.com"* ]]; then
    youtube-dl -q -o - "$url" | mpv - > /dev/null 2>&1 &

    return 0
  fi

  xdg-open $url
}

if [[ "${BASH_SOURCE[0]}" = "$0" ]]; then
  main "$@"
fi

