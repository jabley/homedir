#!/bin/sh
# Ensure that latest emacsclient is first in the PATH
export PATH="/Applications/Emacs.app/Contents/MacOS/bin:${PATH}"
# Point emacs at latest version
alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
