#!/bin /bash
source $HOME/login/Colors.sh
clear
echo -e $verde "
${verde} _|          _|_|      _|_|_|  _|_|_|  _|      _|
${verde} _|        _|    _|  _|          _|    _|_|    _|
${verde} _|        _|    _|  _|  _|_|    _|    _|  _|  _|
${verde} _|        _|    _|  _|    _|    _|    _|    _|_|
${verde} _|_|_|_|    _|_|      _|_|_|  _|_|_|  _|      _|
" ${blanco}
sleep 0.5
echo
#REQUERIMIENTOS
pkg install python
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login
mkdir /data/data/com.termux/files/usr/share/login/
echo
clear

echo -e $verde " _     ___   ____ ___ _   _"
echo -e $verde "| |   / _ \ / ___|_ _| \ | |"
echo -e $verde "| |  | | | | |  _ | ||  \| |"
echo -e $verde "| |__| |_| | |_| || || |\  |"
echo -e $verde "|_____\___/ \____|___|_| \_|"
echo 
echo 
#Contraseñas de inicio
read -p "Ingresar la nueva contraseña: " passone;
read -p "Repetir contraseña: " passtwo;

if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
echo 
echo 
	echo -e $blanco Login instalado

elif [ $passone != $passtwo ];
then
	echo 'Password dont match'
fi
