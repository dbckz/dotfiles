#!/bin/zsh

# cd is a waste of time
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias projects="cd ~/projects"
alias github="cd ~/projects/github"

# Some command line shortcuts
alias l='ls -lhF'
alias la='ls -lahF'
alias h='fc -li 1' #nicer looking history
alias ap="ansible-playbook"
alias vi="vim"
alias rdp="xfreerdp --plugin cliprdr"
alias pyjson='python -mjson.tool'
alias diff='colordiff'

# Git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='g push'
alias gpr='git pull --rebase'
alias gpl='git pull'
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold red)%h%C(reset) - %C(bold blue)(%ar)%C(reset) %C(bold white)%s%C(reset) %C(white)- %an%C(reset)%C(bold green)%d%C(reset)'"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Make grep output always coloured
# and exclude searching some files
grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'

# Get public IP address
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"

# Get private IP(s)
alias privip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Move with interactive set as default
# else too easy to overwrite a file
alias mv='mv -i'

# Open man pages with vim
# using vim-superman plugin
alias man='vman'

#shortcut to sort IP adresses appropriately
alias sortip='sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4'
