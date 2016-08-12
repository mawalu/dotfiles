export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gianu"

plugins=(git archlinux npm node jsontools sudo vagrant wd urltools)

export GOPATH=$HOME/Documents/programme/go
export PATH=$GOPATH/bin:$HOME/node_modules/bin:$HOME/bin:$HOME/.composer/vendor/bin:/usr/lib/node_modules:$HOME/.gem/ruby/2.3.0/bin:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/:$PATH
export EDITOR=vim
source $ZSH/oh-my-zsh.sh

alias t='todo.sh'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

function gui() {
  if [ $# -gt 0 ] ; then
    ($@ &) &>/dev/null
  else
    echo "missing argument"
  fi
}

function open() {
  gui gnome-open $@
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

source $HOME/.zshrc.local

zstyle ':completion:*' special-dirs true

