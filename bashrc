# Welcome on my .bashrc !

PS1='\e[31m[\e[93m\u\e[31m@\e[32m\h \e[1m\e[96m\W\e[m\e[31m]\e[39m\n=> \$ '
# PS1='\e[31m[\e[93meagle\e[31m@\e[32m42sh \e[1m\e[96m\W\e[m\e[31m]\e[39m\n=> \$ '
alias la='ls -a'
alias cdtp='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info/S2/tp9-xavier.de-place'
alias python='python3'
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi 
alias apple='cat /Users/xavier2p/apple'
alias hacker='cat /Users/xavier2p/hacker'
alias pc='cat /Users/xavier2p/pc'
alias ls='ls --color=auto'
alias ll='ls -l'
alias lal='la -l'
alias afit='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info; open afit.code-workspace; cd xavier.de-place'
alias autosync='sync "[autocommit]: work in progress..."'
alias afittest='dune clean; cat /Users/xavier2p/testrunning; dune build; dune runtest'
alias startnix='nix-shell -p ripgrep'
alias cdpg='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/global'
alias cdp='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork'
alias rc='echo "$BASHRC"; vim /Users/xavier2p/.bashrc; source /Users/xavier2p/.bashrc'
alias vrc='echo "$VIM"; vim /Users/xavier2p/.vimrc'
alias compile='/Users/xavier2p/.scripts/compilatorcsharp.sh'
alias nixinstall='/Users/xavier2p/.scripts/installatornix.sh'
alias netscan='echo -e "\e[5m\e[91mScanning Network...\e[25m\e[39m"; nmap -sP 192.168.1.0-255'

VIM="
██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
██║   ██║██║████╗ ████║██╔══██╗██╔════╝
██║   ██║██║██╔████╔██║██████╔╝██║
╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
 ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"

BASHRC="
██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
██████╔╝███████║███████╗███████║██████╔╝██║
██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║
██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
"

function cdla
{
 cd $*
  la
}

function sync
{ git status
  git add -A
  git status
  git commit -m "$*"
  git push
  git reflog
}

function clonetp
{ cd OneDrive\ -\ EPITA/tp_info/S2/
  pwd
  USRNAME="xavier.de-place"
  TPPATH="@git.cri.epita.fr:p/2026-s2-csharp/tp"
  SEPARATOR="-"
  TOCLONE="$USRNAME$TPPATH$*$SEPARATOR$USRNAME"
  echo $TOCLONE
  git clone $TOCLONE
  cd tp$*$SEPARATOR$USRNAME
  la
}

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
