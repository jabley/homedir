#!/usr/bin/env bash

g() {
  cd ~/govuk/$1*
}

# Vagrant VirtualBox choice
export govuk_dev_dist='precise'

venv() {
  the_env=$(basename `pwd`)
  if [ ! -d ~/.virtualenvs/$the_env ]; then
    virtualenv ~/.virtualenvs/$the_env
  fi
  source ~/.virtualenvs/$the_env/bin/activate
}

