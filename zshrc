# Welcome on my .zshrc !

ZSHRC="
███████╗███████╗██╗  ██╗██████╗  ██████╗
╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
  ███╔╝ ███████╗███████║██████╔╝██║     
 ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
███████╗███████║██║  ██║██║  ██║╚██████╗
╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
"

VIM="
██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
██║   ██║██║████╗ ████║██╔══██╗██╔════╝
██║   ██║██║██╔████╔██║██████╔╝██║
╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
 ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"

setopt autocd
autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '%F{red}]-[%f%F{227}%s:%b%m%u%c%a%f'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

PROMPT='%F{red}┌─[%f%F{214}%n%f%F{red}%f%F{010}MacBookAirM1%f%F{red}]-[%f%F{014}%B%1~%b%f${vcs_info_msg_0_}%F{red}]%f
%F{red}└[%f%h%F{red}]-[%f%B%#%b%F{red}]%f %F{green}>%f '
RPROMPT='%F{red}[%f%w%F{red}]-[%f%T%F{red}]%f'
# PROMPT='%n@%m %1~ %#'

alias la='ls -a'
alias cdtp='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info/S2/abacus_project; pwd'
alias python3='/usr/local/bin/python3'
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi
alias apple='cat ~/apple'
alias hacker='cat ~/hacker'
alias pc='cat ~/pc'
alias ls='ls -CF --color=auto'
alias ll='ls -l'
alias lal='la -l'
alias welcome='hacker; neofetch'
alias afit='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info/S1/afit'
alias autosync='sync "[autocommit]: work in progress..."'
alias afittest='dune clean; cat /Users/xavier2p/testrunning; dune build; dune runtest'
alias startnix='nix-shell -p ripgrep'
alias cdpg='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/global'
alias cdp='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork'
alias rc='echo "$ZSHRC"; vim ~/.zshrc; source ~/.zshrc'
alias vrc='echo "$VIM"; vim ~/.vimrc'
alias compile='~/.scripts/compilatorcsharp.sh'
alias nixinstall='~/.scripts/installatornix.sh'
alias netscan='echo -e "\e[5m\e[91mScanning Network...\e[25m\e[39m"; nmap -sP 192.168.1.0-255'
alias clonetp='~/.scripts/clonetp.sh'
alias clonealltp='~/.scripts/clonealltp.sh'
alias dl='cd ~/Movies/dl/'
alias mk='vim Makefile'
alias cdal='cd /Users/xavier2p/OneDrive\ -\ EPITA/Algo/S2/easter_homework; pwd'
alias cdpg='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork/game; pwd'
alias cdpr='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork/reports; pwd'
alias cdpw='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork/website; pwd'
alias cdnt='cd /Users/xavier2p/OneDrive\ -\ EPITA/ntech/Part4_ProceduralGeneration/ntech_AI_tp3; pwd'
alias sl='sl -e'
alias gst='git status'
alias gp='git pull'
alias gaa='git add -A'
alias gau='git add --update'
alias grl='git reflog'

function sync
{ git status
  git add -A
  git status
  git commit -m "$*"
  git push
  git reflog
}

#function clonetp
#{ cd OneDrive\ -\ EPITA/tp_info/S2/
#  pwd
#  USRNAME="xavier.de-place"
#  TPPATH="@git.cri.epita.fr:p/2026-s2-csharp/tp"
#  SEPARATOR="-"
#  TOCLONE="$USRNAME$TPPATH$*$SEPARATOR$USRNAME"
#  echo $TOCLONE
#  git clone $TOCLONE
#  cd tp$*$SEPARATOR$USRNAME
#  la
#}

function pullall
{ cdp
  cd reports
  pwd
  git pull
  git reflog
  cd ../game
  pwd
  git pull
  git reflog
  cd ../website
  pwd
  git pull
  git reflog
  cd ..
}

function cd {
    builtin cd "$@" && ls -F
}

# AUTOLOAD
neofetch
