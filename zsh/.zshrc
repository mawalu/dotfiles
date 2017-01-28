zstyle ':completion:*' special-dirs true

# includes
source .zsh/variables.zsh
source .zsh/functions.zsh
source .zsh/aliases.zsh

# use gpg-agent for ssh
if [[ -a ~/.use-yubikey ]]; then
	source .zsh/yubikey.zsh
fi

# oh-my-zsh
ZSH_THEME="gianu"
plugins=(git archlinux npm node jsontools sudo vagrant wd urltools tmuxinator)
source $ZSH/oh-my-zsh.sh

