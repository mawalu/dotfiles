# oh-my-zsh
ZSH_THEME="gianu"
ZSH=$HOME/.oh-my-zsh
plugins=(git archlinux npm node jsontools sudo vagrant wd urltools tmuxinator vi-mode)
source $ZSH/oh-my-zsh.sh

# general shell config
zstyle ':completion:*' special-dirs true

# includes
source ~/.zsh/variables.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/binding.zsh
source ~/.zsh/screen.zsh


# use gpg-agent for ssh
if [[ -a ~/.use-yubikey ]] && [[ -z "$SSH_CLIENT" ]]; then
	source ~/.zsh/yubikey.zsh
fi

# allow local modifications
if [[ -a ~/.zshrc-local ]]; then
	source ~/.zshrc-local
fi

stty -ixon
