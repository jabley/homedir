#!/usr/bin/env bash

g() {
  cd ~/govuk/$1*
}

# Vagrant VirtualBox choice
export govuk_dev_dist='precise'

venv() {
  the_env=$(basename `pwd`)
  source ~/.virtualenvs/$the_env/bin/activate
}

