# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export ZSH_PLUGINS=$HOME/.zsh-plugins

# Aliases
alias tmux="TERM=screen-256color tmux"
alias vim="nvim"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vagrant pyenv)

# User configuration
# Golang path
export GOPATH=$HOME/gocode
export PATH="$GOPATH/bin:$HOME/bin:$HOME/texbin:$HOME/.local/bin:$HOME/.fzf/bin:$PATH"

export EDITOR=nvim

# Enable oh my zsh
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

case "$TERM" in
    screen*)
        local a=${(V)1//\%/\%\%}
        precmd() {
            print -Pn '\033k$a %~\033\\';
        }
        ;;
esac

function title() {
    # escape '%' chars in $1, make nonprintables visible
    local a=${(V)1//\%/\%\%}

    # Truncate command, and join lines.
    a=$(print -Pn "%20>...>$a" | tr -d "\n")
    local prompt=$a@$2
    case $TERM in
        screen*)
            print -Pn "\e]2;$prompt\a" # plain xterm title
            print -Pn "\033k$prompt\033\\" # tmux window title
            ;;
        xterm*)
            print -Pn "\e]2;$prompt\a" # plain xterm title
            ;;
    esac

}

# precmd is called just before the prompt is printed
function precmd() {
    title "zsh" "%m:%55<...<%~"
}

# preexec is called just before any command line is executed
function preexec() {
    title "$1" "%m:%35<...<%~"
}

# Compiling
export MACOSX_DEPLOYMENT_TARGET="10.14"

# fzf key binding

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh autosuggestion

source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# fzf
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
