FROM archlinux/base

WORKDIR /root

RUN pacman --noconfirm -Syu \
  && pacman --noconfirm -S git stow zsh npm yarn php python base-devel vim

RUN git clone https://github.com/mawalu/dotfiles.git \
  && git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh \
  && cd dotfiles \
  && stow zsh vim \
  && vim +PlugInstall +qall \
  && chsh --shell /bin/zsh
