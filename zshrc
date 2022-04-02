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
# neofetch

PROMPT='%F{red}[%f%F{214}%n%f%F{red}@%f%F{010}%m%f %F{014}%B%1~%b%f%F{red}]%f 
{%h} => %# '
RPROMPT='%F{red}[%f%w - %T%F{red}]%f'
# PROMPT='%n@%m %1~ %#'
alias la='ls -a'
alias cdtp='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info/S2/tp11-xavier.de-place; pwd; ls -a'
alias python3='/usr/local/bin/python3'
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
alias apple='cat /Users/xavier2p/apple'
alias hacker='cat /Users/xavier2p/hacker'
alias pc='cat /Users/xavier2p/pc'
alias ls='ls --color=auto'
alias ll='ls -l'
alias lal='la -l'
alias welcome='hacker; neofetch'
alias afit='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info/S1/afit'
alias autosync='sync "[autocommit]: work in progress..."'
alias afittest='dune clean; cat /Users/xavier2p/testrunning; dune build; dune runtest'
alias startnix='nix-shell -p ripgrep'
alias cdpg='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/global'
alias cdp='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork'
alias rc='echo "$ZSHRC"; vim /Users/xavier2p/.zshrc; source /Users/xavier2p/.zshrc'
alias vrc='echo "$VIM"; vim /Users/xavier2p/.vimrc'
alias compile='/Users/xavier2p/.scripts/compilatorcsharp.sh'
alias nixinstall='/Users/xavier2p/.scripts/installatornix.sh'
alias netscan='echo -e "\e[5m\e[91mScanning Network...\e[25m\e[39m"; nmap -sP 10.0.0.0-255'
alias clonetp='/Users/xavier2p/.scripts/clonetp.sh'
alias clonealltp='/Users/xavier2p/.scripts/clonealltp.sh'
alias dl='cd ~/Movies/dl/'
alias mk='vim Makefile'
alias cdal='cd /Users/xavier2p/OneDrive\ -\ EPITA/Algo/S2/spring_homework; pwd; ls'
alias cdpg='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork/game; pwd; ls'
alias cdpr='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork/reports; pwd; ls'
alias cdpw='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2/myfork/website; pwd; ls'
alias cdnt='cd /Users/xavier2p/OneDrive\ -\ EPITA/ntech/Part4_ProceduralGeneration/tp2-xavier.de-place; pwd; ls -a'

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
