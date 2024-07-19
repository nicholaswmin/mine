# @nicholaswmin bash_profile
#
# - `zed ~/.bash_profile`
# - `source ~/.bash_profile` 

# nvm shit
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# all .git projects live here
alias Projects='cd /Users/nicholaswmin/Projects'

# Set zed as .git editor for rebase/amends etc..
export EDITOR="zed --wait"
