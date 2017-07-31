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
# export ANDROID_NDK_ROOT=~/opt/android-ndk-r9d/
export ANDROID_HOME=/Users/harlock/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

