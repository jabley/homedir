#!/bin/sh
if [ -d "${HOME}/.goenv" ]; then
    export PATH="$HOME/.goenv/bin:$PATH"
    eval "$(goenv init -)"
fi

if [ -d "${HOME}/Projects/brendangregg/FlameGraph" ]; then
    export PATH="${PATH}:${HOME}/Projects/brendangregg/FlameGraph"
fi
