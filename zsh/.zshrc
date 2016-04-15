# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to 'random', it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME='babun'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE='true'

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE='true'

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS='true'

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE='true'

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION='true'

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS='true'

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY='true'

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: 'mm/dd/yyyy'|'dd.mm.yyyy'|'yyyy-mm-dd'
HIST_STAMPS='yyy-mm-dd'

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(aws git pip virtualenv virtualenvwrapper)
plugins=(aws git pylint vagrant)

# User configuration

export PATH='/opt/anaconda/bin:/home/pwj/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games'
# export MANPATH='/usr/local/man:$MANPATH'

######################################################
# General development variables
#
export PWJ_SANDBOX_DIR=$HOME/src
export GIT_HOME=$(dirname $(which git))
export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
export MATLAB_JAVA=/usr/lib/jvm/java-1.7.0-openjdk-amd64/jre
#export MATLAB_JAVA=/opt/java_1_6/jdk1.6.0_45/jre

######################################################
# VG-BIO development variables
#
export VGBIO_BASE_DIR=$HOME/vgbio
export VGBIO_SRC_DIR=$VGBIO_BASE_DIR/src
export VGBIO_INC_DIR=$VGBIO_BASE_DIR/include
export VGBIO_LIB_DIR=$VGBIO_BASE_DIR/lib

export PHYSIQ_PPA_ACCESS_KEY=8075F197FBA22BC629EE4311AA218BCAB341C2ABHSEFSHQSC4
export PHYSIQ_PPA_SECRET_KEY=834BC431CCBF2A314246C2C9EB0136A9AAA337B1

######################################################
# virtualenvwapper configuration (Python)
#
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh


# The next line updates PATH for the Google Cloud SDK.
source '/home/pwj/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
autoload -U compinit compdef
compinit
source '/home/pwj/google-cloud-sdk/completion.zsh.inc'

source $ZSH/oh-my-zsh.sh

# Make sure this is after you source $ZSH/oh-my-zsh.sh
# 
# Colon separated list of directories to search when issuing cd command  
cdpath=(. $HOME/vgbio/src $HOME/src )
export GOPATH=$HOME/proj/go

# PWJ Environment Variabls
export NOTESD=$HOME/git/vgbio/pwj-docs/notes
export LFS=/mnt/lfs

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS='-arch x86_64'

# ssh
# export SSH_KEY_PATH='~/.ssh/dsa_id'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh='mate ~/.oh-my-zsh'

alias setup='source activate'
alias teardown='source deactivate'
alias ze='vim ~/.zshrc'
alias edlog='gvim ~/Dropbox/notes/daylog.md'
alias t='todo.sh'
alias realpath='readlink -f'

#
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#
# physiq specific settings
export PHYSIQ_PPA_ACCESS_KEY=8075F197FBA22BC629EE4311AA218BCAB341C2ABHSEFSHQSC4
export PHYSIQ_PPA_SECRET_KEY=834BC431CCBF2A314246C2C9EB0136A9AAA337B1

