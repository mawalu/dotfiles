# git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias lh="git log -1 --format="%H" | setclip"

# php development
alias phpunit='./vendor/bin/phpunit'
alias tinker='php artisan tinker'
alias art='php artisan'
alias p='clear && phpunit'

# fixes
alias fixgpg='echo UPDATESTARTUPTTY | gpg-connect-agent'

# lights & automation
alias chill='mpv "ytdl://ytsearch:lowfi hip hop chill study" --vid=no'
alias hardbase='mpv https://listen.hardbase.fm/aacplus.pls'

# other
alias tailf='tail -f'
alias twitter='turses'
alias qr='qrencode -o - -t asciii'
alias ipi='curl https://wtfismyip.com/json'
alias scp='sftp'

# containers
alias holup='podman run --rm -it -v $(pwd):/world -w /world --hostname=workbox workbox zsh'
alias kali='podman run --rm -it -v $(pwd):/world -w /world --hostname=kali kali zsh'

# suffix aliases
alias -s git="git clone"
