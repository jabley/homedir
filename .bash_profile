#!/bin/bash

# bash completion for homebrew
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# provide completion support for pip
eval `pip completion --bash`

# trial clang as my c-compiler
#export CC=clang
#export CFLAGS=-Qunused-arguments
#export CPPFLAGS=-Qunused-arguments

# source all of the scripts in ~/.bashrc.d
for f in $(ls ~/.bashrc.d/*.bash) ; do . $f; done

export PATH=~/bin:${PATH}
export PATH=./.bundle/bin:${PATH}

# Source rvm
if [[ -s /Users/jabley/.rvm/scripts/rvm ]] ; then source /Users/jabley/.rvm/scripts/rvm ; fi

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"

