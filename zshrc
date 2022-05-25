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
zstyle ':vcs_info:git:*' formats       '%F{red}]-[%f%F{227}%s:%b%m%u%c%f'
zstyle ':vcs_info:git:*' actionformats '%F{red}]-[%f%F{227}%s:%b|%a%m%u%c%f'

PROMPT='%F{red}┌─[%f%F{214}%n%f%F{red}%f%F{010}MacBookAirM1%f%F{red}]-[%f%F{014}%B%1~%b%f${vcs_info_msg_0_}%F{red}]%f
%F{red}└[%f%h%F{red}]-[%f%B%#%b%F{red}]%f %F{green}>%f '
RPROMPT='%F{red}[%f%w%F{red}]-[%f%T%F{red}]%f'
# PROMPT='%n@%m %1~ %#'

alias la='ls -a'
alias cdtp='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info/S2/csharp/tp15-ThreadsJSON'
alias python3='/usr/local/bin/python3'
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi
alias ls='lsd -F --icon never'
alias ll='ls -l'
alias lal='la -l'
alias afit='cd /Users/xavier2p/OneDrive\ -\ EPITA/tp_info/S1/afit'
alias autosync='sync -m "[autocommit]: work in progress..."'
alias afittest='dune clean; cat /Users/xavier2p/testrunning; dune build; dune runtest'
alias startnix='nix-shell -p ripgrep'
alias cdp='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S2-BTMLGDS'
alias rc='echo "$ZSHRC"; vim ~/.zshrc; source ~/.zshrc'
alias vrc='echo "$VIM"; vim ~/.vimrc'
alias gccs='~/.scripts/compilatorcsharp.sh'
alias nixinstall='~/.scripts/installatornix.sh'
alias netscan='echo -e "\e[5m\e[91mScanning Network...\e[25m\e[39m"; nmap -sP 192.168.1.0-255'
alias clonetp='~/.scripts/clonetp.sh'
alias clonealltp='~/.scripts/clonealltp.sh'
alias dl='cd ~/Movies/dl/'
alias mk='vim Makefile'
alias cdal='cd ~/OneDrive\ -\ EPITA/Algo/S2/easter_homework'
alias cdpg='cd ~/OneDrive\ -\ EPITA/projects/S2-BTMLGDS/game-BTMLGDS'
alias cdpr='cd ~/OneDrive\ -\ EPITA/projects/S2-BTMLGDS/reports-BTMLGDS'
alias cdpw='cd ~/OneDrive\ -\ EPITA/projects/S2-BTMLGDS/website-BTMLGDS'
alias cdnt='cd ~/OneDrive\ -\ EPITA/ntech/Part4_ProceduralGeneration/ntech_AI_tp3'
alias sl='sl -e'
alias SL='sl -e'
alias gst='git status'
alias gp='git pull; grl'
alias gaa='git add -A'
alias gau='git add --update'
alias grl='git reflog -n 10'
alias cdtest='cd ~/.tests'
alias adb='~/.adb/adb'
alias fastboot='~/.adb/fastboot'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'
alias rider='/Applications/Rider.app/Contents/MacOS/rider'
alias pycharm='/Applications/PyCharm.app/Contents/MacOS/pycharm'
alias btms='/Applications/Bitume\ Legends.app/Contents/MacOS/Bitume\ Legends'
alias gls='git ls-files'
alias cdrs='cd /Users/xavier2p/Documents/42.\ prog/rust'
alias sync='~/.scripts/gitsync.sh'
alias note='~/.tests/notetakingcli/main.sh'

function pullall
{ cdpg
  gp
  grl
  cdpw
  gp
  grl
  cdpr
  gp
  grl
  cdp
}

function cd {
    builtin cd "$@" && ls -F
}

function abacus {
    echo "$1" | mono ~/OneDrive\ -\ EPITA/tp_info/S2/csharp/abacus_project/abacus.exe $2
}

# AUTOLOAD
neofetch
