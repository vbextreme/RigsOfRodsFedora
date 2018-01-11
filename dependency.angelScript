#!/bin/bash

cd ./dependency
if [[ ! -d ./angelscript ]]; then
	mkdir ./angelscript
	cd ./angelscript
	wget http://www.angelcode.com/angelscript/sdk/files/angelscript_2.31.2.zip
	unzip angelscript_*.zip
	cd ..
fi

cd angelscript/sdk/angelscript/projects/gnuc
make clean
SHARED=1 VERSION=2.31.2 make -j8
if [[ $? != 0 ]]; then
	echo "FAIL MAIKE"
	exit 1
fi

echo 'INSTALL ANGELSCRIPT'
sudo SHARED=1 VERSION=2.31.2 make install

cd ../../

