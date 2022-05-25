cd ~/OneDrive\ -\ EPITA/tp_info/S2/
pwd
USRNAME="xavier.de-place"
TPPATH="@git.cri.epita.fr:p/2026-s2-csharp/tp"
SEPARATOR="-"
TOCLONE="$USRNAME$TPPATH$*$SEPARATOR$USRNAME"
echo $TOCLONE
git clone $TOCLONE
cd tp$*$SEPARATOR$USRNAME
ls -a
