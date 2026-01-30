function zvm_config() {
    ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
}

# Load fzf after zsh-vi-mode init (otherwise zvm overrides keybindings)
function zvm_after_init() {
    [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
    [ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
}

source ~/.zshrc.d/.antidote.zsh
source ~/.zshrc.d/.zsh_alias.zsh

export EDITOR=vim
export VISUAL=vim

path+=("/snap/bin")
path+=("/home/viktor/.local/share/nvim/mason/bin")
path+=("/home/viktor/.local/bin")

HISTFILE=~/.zshrc.d/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt share_history          # share history across sessions instantly
setopt hist_ignore_all_dups   # remove older duplicates entirely
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it

alias history="history 0"

setopt autocd              # change directory just by typing its name
setopt correct             # auto correct mistakes
setopt magicequalsubst     # enable filename expansion for arguments of the form 'anything=expression'
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt
setopt autopushd           # cd pushes to directory stack
setopt pushdignoredups     # no duplicates in stack
setopt pushdsilent         # don't print stack after pushd
alias d='dirs -v'          # show numbered stack

bindkey -v                                        # vim key bindings
bindkey '^[[Z' reverse-menu-complete
bindkey '\el' autosuggest-accept
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

autoload -Uz compinit
if [[ -n ~/.cache/zcompdump(#qN.mh+24) ]]; then
  compinit -d ~/.cache/zcompdump
else
  compinit -C -d ~/.cache/zcompdump
fi
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

