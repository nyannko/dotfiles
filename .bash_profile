#!/usr/bin/env bash

for file in ~/.{bash_prompt,bash_exports}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#alias
alias ll="ls -al"
alias vi="/usr/local/bin/vim"
alias tcp='lsof -i -n -P | grep TCP'

#color ll
export CLICOLOR=1

#color grep
export GREP_OPTIONS='--color=always'
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# added by Anaconda2 4.0.0 installer
export PATH="//anaconda/bin:$PATH"

# added by Anaconda2 4.3.0 installer
export PATH="~/anaconda/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '~/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '~/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# nvm path
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
