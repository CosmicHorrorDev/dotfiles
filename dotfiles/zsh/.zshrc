# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Theme
ZSH_THEME="maran"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# # Aliases
# Lazy aliases
alias c='clear'
alias r='ranger'
alias e='exit'

# Pandoc md to pdf word-vomit alias
alias mdtopdf='pandoc -V margin-left=1in -V margin-right=1in -V margin-top=1in -V margin-bottom=1in -f gfm --pdf-engine wkhtmltopdf -o'

# Neofetch alias
alias nf='neofetch'

# neovim aliases
alias nv='nvim'
alias vim='nvim'
alias vi='nvim'

# extra git aliases
alias gs='git status'
alias gpom='git push -u origin master'
alias gi='git init'

# Rust Aliases
alias cn='cargo new'
alias cnl='cargo new --lib'
alias cns='cargo new --vcs none'

alias cb='cargo build'
alias cbr='cargo build --release'

alias cr='cargo run'
alias crr='cargo run --release'

alias ct='cargo test'

# Custom vi Movement
bindkey -a j backward-char
bindkey -a k down-history
bindkey -a l up-history
bindkey -a ';' forward-char

bindkey -v 'jj' vi-cmd-mode

# keychain for ssh-agent stuff
eval $(keychain --eval --quiet --noask id_rsa)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
