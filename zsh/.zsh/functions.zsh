function gui() {
  if [ $# -gt 0 ] ; then
    ($@ &) &>/dev/null
  else
    echo "missing argument"
  fi
}

function open() {
  xdg-open $@
}

function sha-hash() {
  read -s INPUT
  HASH=$(echo $INPUT | tr -d '\n' | sha256sum | awk '{print toupper($0)}')
  HASH=${HASH:0:8}
  echo $HASH
  echo -n $HASH | setclip
}

function extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz) tar xzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) unrar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xf $1 ;;
            *.tbz2) tar xjf $1 ;;
            *.tgz) tar xzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1;;
            *.7z) 7z x $1 ;;
            *) echo "'$1' cannot be extracted via ex()" ;;
       esac
    else
        echo "'$1' is not a valid file"
    fi  
}

function yt() {
   youtube-dl -q -o - "$1" | mpv -
}
