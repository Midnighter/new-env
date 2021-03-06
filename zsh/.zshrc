# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="${HOME}/.local/bin:${HOME}/.tmuxifier/bin:${PATH}"

# Gurobi crap
export LD_LIBRARY_PATH="${HOME}/.local/share/gurobi/FailLib:${LD_LIBRARY_PATH}"
export GRB_LICENSE_FILE="${HOME}/.local/share/gurobi/gurobi.lic"

# virtualenvwrapper
export WORKON_HOME="${HOME}/.virtualenvs"

# Path to your oh-my-zsh installation.
export ZSH="/home/moritz/.oh-my-zsh"

# more awesome font for powerlevel9k
#POWERLEVEL9K_MODE="awesome-fontconfig"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(common-aliases debian docker gitfast history wd tmux)
# Python
plugins+=(python virtualenvwrapper)
# Ruby
plugins+=(rvm ruby rails)
# JS
plugins+=(zsh-nvm npm)
# docker
plugins+=(docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration
alias ipynb="jupyter notebook"

# tmuxifier
alias mux="tmuxifier"
eval "$(tmuxifier init -)"

# virtualenvwrapper aliases
# http://blog.doughellmann.com/2010/01/virtualenvwrapper-tips-and-tricks.html
alias v="workon"
alias v.down="deactivate"
alias v.mk="mkvirtualenv --no-site-packages"
alias v.mk3.5="mkvirtualenv --no-site-packages -p $(which python3.5)"
alias v.mk3.6="mkvirtualenv --no-site-packages -p $(which python3.6)"
alias v.mk.w.site="mkvirtualenv --system-site-packages"
alias v.show="showvirtualenv"
alias v.cp="cpvirtualenv"
alias v.wipe="wipeenv"
alias v.rm="rmvirtualenv"
alias v.switch="workon"
alias v.add2="add2virtualenv"
alias v.cd="cdvirtualenv"
alias v.cd.site="cdsitepackages"
alias v.ls="lsvirtualenv"
alias v.ls.site="lssitepackages"
alias v.all="allvirtualenv"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=vim

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

unsetopt AUTO_CD

# mosek
MOSEKLM_LICENSE_FILE="${HOME}/.config/mosek.mosek.lic"

# prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

# override git plugin
alias gcd="git checkout devel"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
