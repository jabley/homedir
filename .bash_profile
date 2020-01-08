# this is for OS X, because it doesn't load bashrc on each login, it
# loads bash_profile.

[[ $- == *i* ]] && source ~/.bashrc

export PATH="$HOME/.cargo/bin:$PATH"
