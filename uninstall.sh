#!/data/data/com.termux/files/usr/bin/bash
source $HOME/login/Colors.sh
echo
rm $PREFIX/bin/login.py
cp old_login $PREFIX/bin/login
chmod 700 $PREFIX/bin/login
echo
echo -e $verde login removed
