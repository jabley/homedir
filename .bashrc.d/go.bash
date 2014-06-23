#!/bin/sh
export GOPATH=~/gocode
export PATH="$PATH:$GOPATH/bin"
# Add the GOROOT-based install location to your PATH so that `godoc` and
# `go vet` will work
export PATH=$PATH:/opt/boxen/homebrew/opt/go/libexec/bin
