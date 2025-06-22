if [[ ! -d ${ZDOTDIR:-$HOME}/.antidote ]]; then
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-$HOME}/.antidote
fi

source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh

antidote bundle <~/.zshrc.d/.zsh_plugins.txt >~/.zshrc.d/.zsh_plugins.zsh
source ~/.zshrc.d/.zsh_plugins.zsh
