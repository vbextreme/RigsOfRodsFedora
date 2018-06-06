#!/bin/bash

V=''
MODE=''
[[ $# == 1 ]] && MODE=$1

cd ./dependency

if [[ "$MODE" == "stable" ]]; then
	V=2.31.2
elif [[ "$MODE" == "stable1" ]]; then
	V=2.32.0
else 
	V=2.32.0
fi

if [[ ! -d "./angelscript$V" ]]; then
	mkdir "./angelscript$V"
	cd "./angelscript$V"
	wget http://www.angelcode.com/angelscript/sdk/files/angelscript_$V.zip
	unzip angelscript_*.zip
	cd ..
fi

cd angelscript$V/sdk/angelscript/projects/gnuc
make clean
SHARED=1 VERSION=$V make -j8
if [[ $? != 0 ]]; then
	echo "FAIL MAIKE"
	exit 1
fi

echo 'INSTALL ANGELSCRIPT'
sudo SHARED=1 VERSION=$V make install

cd ../../

