# enable z
. `brew --prefix`/etc/profile.d/z.sh

#add home-brews sbin to the path
export PATH="/usr/local/sbin:/usr/local/bin:${PATH}"

#git shortcuts

# the greatest git shortcut of all
alias visit='open `git remote show origin | grep "Fetch" | perl -p -i -e "s/:/\//g"| perl -p -i -e"s/Fetch URL\/ git@/http:\/\//g"`'
alias gs='git status'
alias gc='git commit'
alias go='git checkout'
alias ga='git add'
alias gd='git diff --color'
alias gds='git diff --color --staged'
alias goall='git checkout -- .'
alias gh='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias gac="ga .;gc -m "
alias pupu="git pull; git fetch --tags;git push"

alias l='ls -l'
alias b='cd ..'

# grep bash history
alias h="history | grep -i"

# open a directory in sublime
alias slime='open -a "Sublime Text 2"'
alias s.='open -a "Sublime Text 2" .'

# blow away pyc files
alias pyc-bye="find . -name '*.pyc' -delete"

# watch a directory, run a command
alias wr="bash ~/Dropbox/me/watch-run.sh"

#Make my prompt fancy (and noticeable)
PS1="\[\e[1;34m\]\u@\h\[\e[m\] \w $ "

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# setup virtualenvwrapper
export WORKON_HOME=~/envs
source /usr/local/bin/virtualenvwrapper.sh

# don't get rate limited for homebrew checks to github
export HOMEBREW_GITHUB_API_TOKEN="da253119a25310318371ae045b9e6c2d16b7e96c"

# tmux
export EDITOR='vim' # maybe slime some day?