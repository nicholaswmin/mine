#!/usr/bin/bash 

sudo su
# @nicholaswmin apps/programs

# Node first 
brew install nvm
nvm install --lts
nvm use node

# Personal 

# all the browsers
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask firefox

# slack
brew install --cask slack

# whatsapp
brew install --cask whatsapp

# curl but better
brew install httpie

# zed code editor
brew install --cask zed

# Throttle your internet/localhost 
npm install -g sitespeedio/throttle

# Github CLI/Copilot
brew install gh
gh extension install github/gh-copilot

# Heroku CLI
brew tap heroku/brew && brew install heroku

# Node Version Manager
brew install nvm

# Redis 
brew install redis

# Postgres
brew install postgresql


# actionlint (Github Actions Linter):
brew tap "rhysd/actionlint" "https://github.com/rhysd/actionlint"
brew install actionlint
