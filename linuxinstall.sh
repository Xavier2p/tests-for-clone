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

cp ./vimrc ~/.vimrc

cp ./zshrc ~/.zshrc

apt install make
apt install tree
apt install htop
apt install ranger
apt install cpufetch
apt install neofetch
apt install vim
apt install sl
apt install cmatrix
apt install cbonsai
apt install git
apt install curl
apt install nmap
apt install opam
apt install ncdu
apt install zsh
apt install lsd
apt install lolcat
apt install speedtest-cli
