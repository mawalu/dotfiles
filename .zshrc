export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kafeitu"

plugins=(git, archlinux, npm, node, jsontools, sudo, vagrant, wd)

export PATH=$HOME/node_modules/bin:$HOME/bin:/usr/lib/node_modules:$HOME/.gem/ruby/2.1.0/bin:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/:$PATH
source $ZSH/oh-my-zsh.sh
