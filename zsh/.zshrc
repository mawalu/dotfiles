# oh-my-zsh
ZSH_THEME="gianu"
ZSH=$HOME/.oh-my-zsh
plugins=(git archlinux npm node jsontools sudo vagrant wd urltools tmuxinator)
source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' special-dirs true

# includes
source ~/.zsh/variables.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh

# use gpg-agent for ssh
if [[ -a ~/.use-yubikey ]]; then
	source ~/.zsh/yubikey.zsh
fi

# allow local modifications
if [[ -a ~/.zshrc-local ]]; then
	source ~/.zshrc-local
fi

