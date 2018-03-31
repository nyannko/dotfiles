#!/usr/bin/env bash

for file in ~/.{bash_prompt,bash_exports}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#alias
alias ll="ls -alF"
alias vi="/usr/local/bin/vim"
alias tcp="lsof -i -n -P | grep TCP"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# UTF-8
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# color ll
export CLICOLOR=1

# color grep
export GREP_OPTIONS='--color=always'

export PATH="/usr/local/sbin:$PATH"

# nvm path
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
