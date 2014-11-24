## zsh stuff
autoload -Uz promptinit
promptinit
prompt redhat


#prompt bigfade blue white grey white

autoload -U colors && colors
alias ls='ls --color=auto'

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

## Aliases

alias python-webserver='python3 -m  http.server 8888'
#alias docker-rm-none=docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
alias scala='scala -Dscala.color'

#################
## Shell
#################

export PATH=/home/muki/Development/bin/:$PATH

## Java Home
# export JAVA_HOME=/usr/lib/jvm/jdk1.7.0
# export PATH=$JAVA_HOME/bin:$PATH

#########################################
####             OpenCL              ####
#########################################

#export OPEN_CL_HOME=/usr/lib/nvidia-current
#export PATH=$OPEN_CL_HOME:$PATH
CL_LOG_ERRORS=stdout

#########################################
####             Eclipse             ####
#########################################

## Eclipse Home
export ECLIPSE_HOME=/home/muki/eclipse/eclipse

#########################################
####            Typesafe             ####
#########################################

## Activator

export TYPESAFE_ACTIVATOR_HOME=/home/muki/Development/target_platform/typesafe/activator
export PATH=$TYPESAFE_ACTIVATOR_HOME:$PATH

## Play Home

export PLAY_HOME=/home/muki/Development/target_platform/typesafe/play-2.0
export PATH=$PLAY_HOME:$PATH

## Scala Home

export SCALA_HOME=/home/muki/Development/target_platform/typesafe/scala/scala
export PATH=$SCALA_HOME/bin:$PATH

#########################################
####             Apache              ####
#########################################

## Maven Home
export MAVEN_HOME=/home/muki/Development/target_platform/apache/apache-maven
export PATH=$MAVEN_HOME/bin:$PATH


## Apache Felix
export FELIX_HOME=/home/muki/Development/target_platform/apache/apache-felix
export PATH=$PATH:$FELIX_HOME/bin

#########################################
####             Build               ####
#########################################

## Sonytype Nexus OSS Home
export NEXUS_HOME=/home/muki/Development/target_platform/sonatype/nexus
export PATH=$PATH:$NEXUS_HOME/bin

## Tycho Version Sync
export TYCHO_VERSION_SYNC=/home/muki/Development/target_platform/mukis/tvs
export PATH=$PATH:$TYCHO_VERSION_SYNC

## Reprepo
export REPREPRO_BASE_DIR DEFAULT=/home/muki/Development/apt-repo/packages

#########################################
####             Database            ####
#########################################

export H2_HOME=/home/muki/Development/target_platform/databases/h2
export PATH=$PATH:$H2_HOME/bin

export HSQLDB_HOME=/home/muki/Development/target_platform/databases/hsqldb
export PATH=$PATH:$HSQLDB_HOME/bin

export MONGO_HOME=/home/muki/Development/target_platform/databases/mongodb
export PATH=$PATH:$MONGO_HOME/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

