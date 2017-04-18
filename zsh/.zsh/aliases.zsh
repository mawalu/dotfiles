# git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

# php development
alias phpunit='./vendor/bin/phpunit'
alias tinker='php artisan tinker'
alias art='php artisan'
alias p='clear && phpunit'

# fixes
alias fixgpg='killall gpg-agent && sudo systemctl restart pcscd && source ~/.zshrc'

# lights & automation
alias codemode='hue-scene blue && radio "http://listen.hardbase.fm/aacplus.pls"'

# other
alias tailf='tail -f'
alias twitter='turses'
alias qr='qrencode -o - -t asciii'

