# /bin/sh
alias ll='ls -l'
#alias g='cd ~/govuk/$*'
# allow sc command for sorting out environment variables for ec2-* commands
alias set_credentials='`gpg -d ~/credentials.sh.gpg`'
alias sc='set_credentials'
alias pwgen="tr -dc 'A-Za-z0-9\`~!@#$%^&*()_+[]{}\|;:<>?,./' </dev/urandom | head -c 16 | xargs"
# see http://tomafro.net/2012/06/tip-bundler-with-binstubs
alias bi='bundle install --path .bundle/gems --binstubs .bundle/bin'
alias be='bundle exec'
