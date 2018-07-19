#!/bin/bash

alias hk="ssh ubuntu@18.191.137.240"
alias quest="ssh ywq9361@quest.it.northwestern.edu"
alias trf="/usr/local/bin/trf409.macosx"

export HOMEBREW_EDITOR=nano
export PS1='\[\e[0;35m\][\h::\w] 😱 \[\e[m\] '
export PATH="$HOME/.linuxbrew/bin:/usr/bin:~/google-cloud-sdk/bin:$PATH"
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"
export CLOUDSDK_PYTHON="/usr/bin/python2.7"

export CLICOLOR=1
export LS_COLOR="di=01:fi=00;1:*.php=00;34"

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# go work - Go to the working directoy. Copy the hash that nextflow outputs and this function
gw() {
    cd /projects/b1042/AndersenLab/work/$1*
}
rm_gw() {
    rm -rf /projects/b1042/AndersenLab/work/$1*
}

# Autojump config
[ -f "/home/$(whoami)/.linuxbrew/etc/profile.d/autojump.sh" ] && . "/home/$(whoami)/.linuxbrew/etc/profile.d/autojump.sh"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yewang/repo/google-cloud-sdk/path.bash.inc' ]; then source '/Users/yewang/repo/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yewang/repo/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/yewang/repo/google-cloud-sdk/completion.bash.inc'; fi
