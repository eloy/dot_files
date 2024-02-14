# Set /usr/local/bin first in path
PATH=/usr/local/bin:~/bin:$PATH
# Add npm
PATH=$PATH:/usr/local/share/npm/bin/

# Add postgres
PATH=$PATH:/usr/local/Cellar/postgresql94/9.4.9_1/bin/

# Change PS1 to a most usefull layout
PS1='\u@\h:\w\$ '

# Default editor
export EDITOR=nano

# Some usefull alias from linux
alias 'ls=ls -G'
alias grep='grep --color=auto'


# JAVA
# export JAVA_HOME=`/usr/libexec/java_home`
# export JDK_HOME=$JAVA_HOME
# export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk

# Ruby stuff
eval "$(rbenv init -)"

alias 's=bundle exec rspec'
alias 'r=bundle exec rake'
alias 'rconsole=bundle exec rails console'
alias 'annotate=bundle exec annotate -p before'

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

## GO
# export GOPATH=$HOME/src/go
# export PATH="$PATH:$GOPATH/bin"

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"


# Android NDK root
export ANDROID_NDK_ROOT=~/opt/android-ndk-r16b
export ANDROID_HOME=/Users/harlock/Library/Android/sdk
export ANDROID_SDK_ROOT=${ANDROID_HOME}
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# Node and Python
# export PYTHONPATH=/usr/local/Cellar/python/3.7.4_1/bin/python3
# export PYTHONPATH=/Users/harlock/.miniconda/bin
# export NODE_GYP_FORCE_PYTHON=/usr/local/Cellar/python/3.7.4_1/bin/python3
# export PATH="/usr/local/opt/node@14/bin:$PATH"

# OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


# https://support.apple.com/en-us/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1


export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# Conda
# source ~/.miniconda/bin/activate
# conda init zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/harlock/.miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/harlock/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/harlock/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/harlock/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
