PROGNAME=$0

usage() {
  cat << EOF >&2
Usage: $PROGNAME [-v] [-d <dir>] [-f <file>]

-f <file>: The file to specify
 -d <dir>: The directory to use
       -v: verbose mode
EOF
  exit 1
}

dir=default_dir file=default_file verbose_level=0
while getopts d:f:v:h o; do
  case $o in
    (f) file=$OPTARG;;
    (d) dir=$OPTARG;;
    (v) verbose_level=$((verbose_level + 1));;
    (h) usage;;
    (*) usage
  esac
done
shift "$((OPTIND - 1))"

cp ./bashrc ~/.bashrc
source ~/.bashrc

cp ./vimrc ~/.vimrc

cp ./zshrc ~/.zshrc
source ~/.zshrc

apt install tree
apt install bat

:'
bat
tree
htop
ranger
cpufetch
neofetch
vim
sl
cmatrix
cbonsai
git
curl
nmap
python
rust
opam
ncdu
zsh
lsd
lolcat
speedtest-cli

'
