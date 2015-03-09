export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gianu"

plugins=(git, archlinux, npm, node, jsontools, sudo, vagrant, wd)

export PATH=$HOME/node_modules/bin:$HOME/bin:/usr/lib/node_modules:$HOME/.gem/ruby/2.2.0/bin:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/:$PATH
export EDITOR=vim
source $ZSH/oh-my-zsh.sh

alias t='todo.sh'

function myIp() {
    curl http://wtfismyip.com/text
}
