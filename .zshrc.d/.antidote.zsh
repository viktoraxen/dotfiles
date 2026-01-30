if [[ ! -d ${ZDOTDIR:-$HOME}/.antidote ]]; then
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-$HOME}/.antidote
fi

source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh

zsh_plugins=~/.zshrc.d/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
fi
source ${zsh_plugins}.zsh
