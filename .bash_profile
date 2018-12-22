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
alias cip="myip | pbcopy" # copy ip 
#alias pdflatex="/Library/TeX/texbin/pdflatex"

# query ip
function qip() {
    # dependency: pygments. installed by `sudo easy_install pygments; which pygmentize`
    if [ $# -eq 0 ] 
    then 
        loc=`curl -s http://ip-api.com/json` # curl silent mode
        echo "${green}Your local IP address is:${reset} "
        echo $loc | python -m json.tool | pygmentize -l json 
        # without color
        # python -m json.tool
    fi

    for i in $@
    do
        echo "The location of ${red}$i${reset} is: "
        addr="http://ip-api.com/json/"$i;
        res=`curl -s $addr`
        echo $res | python -m json.tool | pygmentize -l json
    done
}

# UTF-8
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# color ll
export CLICOLOR=1

# color grep
export GREP_OPTIONS='--color=always'

export PATH="/usr/local/sbin:$PATH"

# latex
export PATH="/Library/TeX/texbin/:$PATH"

# nvm path
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
