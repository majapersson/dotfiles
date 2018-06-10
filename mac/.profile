export PATH=/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.composer/vendor/bin

export EDITOR="nano";

# Import git-completion
. ~/git-completion.bash

# Import bash aliases
 . ~/.bash_aliases

# Color scheme
# Directorys = green, files = default (white)
#LSCOLORS='ow=1;32m:fi=1;0:ex=1;0:'
LSCOLORS=cxfxcxdxbxegedabagacad

export LSCOLORS

# Import and use z.sh
. ~/z.sh

# Import git prompt file
. ~/git-prompt.sh

# Make autocompletion case insensitive
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# Customize prompt
# (Git status) Current directory $
 export PS1='`[[ $(git status 2> /dev/null) =~ Changes\ to\ be\ committed: ]] && echo "\[\e[33m\]" || echo "\[\e[31m\]"``[[ ! $(git status 2> /dev/null) =~ nothing\ to\ commit,\ working\ .+\ clean ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]") \[\e[01;34m\]\w\[ $ \e[00m\]'

# Shorter version without git
# Current directory $
# export PS1="\[\e[1;94m\]\w \$ \[\e[0m\]"

# Only show two directories in path
# .../web/git instead of /mnt/d/web/git
export PROMPT_DIRTRIM=2
