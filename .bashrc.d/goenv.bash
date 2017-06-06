#!/bin/sh
if [ -d "${HOME}/.goenv" ]; then
    export PATH="$HOME/.goenv/bin:$PATH"
    eval "$(goenv init -)"
fi
