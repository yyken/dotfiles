# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"
#ZSH_THEME="ys"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(history history-substring-search osx brew autojump git git-extras git-flow github svn python pip node npm lein rsync)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
PATH=/usr/X11/bin:$PATH             # X11 Stuff 
PATH=/usr/local/share/npm/bin:$PATH # nodejs npm
PATH=/usr/local/sbin:$PATH             # X11 Stuff 
PATH=$HOME/Projects/rpi/arm-cs-tools/bin:$PATH
PATH=$HOME/bin:$PATH                # Personal binaries


export PATH

export PAGER="less -s"
export LESS_TERMCAP_mb=$'\E[01;36m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;33m'


export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
export NODE_PATH=/usr/local/lib/node
export JAVA_HOME=`/usr/libexec/java_home`
export MAVEN_OPTS="-Xmx512M -XX:MaxPermSize=512m"
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# List directory contents after a 'cd'
function chpwd() {
    emulate -LR zsh
    ls
}

alias gk='gitk --all 2> /dev/null &'
alias tmux="TERM=screen-256color-bce tmux"
alias vi="mvim -v"
alias vim="mvim -v"
alias less="less -is"
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

HISTCONTROL=ignoreboth

. `brew --prefix`/etc/profile.d/z.sh

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/kenyeh/.gvm/bin/gvm-init.sh" ]] && source "/Users/kenyeh/.gvm/bin/gvm-init.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
