# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/osho/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
source $HOME/.spaceshiprc

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $HOME/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $HOME/.oh-my-zsh/plugins/*
# Custom plugins may be added to $HOME/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	ruby gem bundler rvm
	node npm yarn
	python pyenv
	mvn
# rails
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#	export EDITOR='nano'
# else
#	export EDITOR='nano'
# fi
export EDITOR='nano'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate $HOME/.zshrc"
# alias ohmyzsh="mate $HOME/.oh-my-zsh"

export PATH="/usr/local/sbin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Brew Autocompletions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Load zsh tools for syntax highlighting and autosuggestions
HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"

alias ls='ls -G'

# NVM
export NVM_DIR=$HOME/.nvm
source $(brew --prefix nvm)/nvm.sh
source $HOME/.nvm_sh

# For compilers:
export LDFLAGS="${LDFLAGS} -L$(brew --prefix zlib)/lib -L$(brew --prefix sqlite)/lib -L$(brew --prefix openblas)/lib -L$(brew --prefix libffi)/lib -L$(brew --prefix openssl)/lib -L$(brew --prefix nss)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix zlib)/include -I$(brew --prefix sqlite)/include -I$(brew --prefix openblas)/include -I$(brew --prefix nss)/include"
export CFLAGS="${CFLAGS} -I$(brew --prefix openssl)/include"

# GVM
source $HOME/.gvm/scripts/gvm
export GOPATH=$HOME/workspace/go
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE=on

# PyENV
export PATH="$HOME/.pyenv:$PATH"
eval "$(pyenv init -)"

# PipENV
export PIPENV_PYTHON="$(pyenv which python)"
eval "$(pipenv --completion)"
export PIPENV_VENV_IN_PROJECT=1
source $HOME/.pipenv_sh

# CrENV
# export PATH="$HOME/.crenv/bin:$PATH"
# eval "$(crenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"
alias rake='noglob rake'
cd .

# Haskell
source $HOME/.ghcup/env

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/osho/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/osho/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/osho/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/osho/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/osho/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/osho/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
