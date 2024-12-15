#!/bin/bash
# Note: `source ~/.bash_profile` after change
export PATH="$PATH:"/usr/local/bin/

# nvm shit
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Homebrew
export PATH=/opt/homebrew/bin:/Users/nicholaswmin/.nvm/versions/node/v22.4.1/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin

# make that fucking stupid shitty warning shut the fuck up
# for a second
export BASH_SILENCE_DEPRECATION_WARNING=1

# all .git projects live here
alias Projects='cd /Users/nicholaswmin/Projects'

# Set zed as .git editor for rebase/amends etc..
export EDITOR="zed --wait"
# Set Default MacOS text editor
export EDITOR="/Applications/Zed.app"

# node/npm
nvm use node

# serve local
alias serve="npx -y serve -p 8080 --no-port-switching"
