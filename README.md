# Rigs of Rods installer for Fedora
script for build and install RoR game</br>
Automatic download source</br>
Released under GPL v3

## Revision
0.6 new stable release, add dependency rapidjson, add new version angelscript, add stable1
0.5 fix cd</br>
0.4 more simple way to build stable version</br>
0.3 stable version</br>
0.2 auto rebuild angelcript</br>
0.1 add missing package: openal, libcurl, boost-system</br>
0.0 all script</br>

## How To
### Install
```
$ git clone https://github.com/vbextreme/RigsOfRodsFedora.git
$ cd RigsOfRodsFedora
$ ./dependency.dnf
$ ./dependency.ogre-caelum
$ ./dependency.mygui
$ ./dependency.angelScript
$ ./ror.build
$ sudo ./ror.install
```

### Uninstall
todo

### Old Stable
if build fail you can try to build old stable version</br>
</br>
```
$ git clone https://github.com/vbextreme/RigsOfRodsFedora.git
$ cd RigsOfRodsFedora
$ ./dependency.dnf
$ ./dependency.ogre-caelum
$ ./dependency.mygui

$ ./dependency.angelScript stable
$ ./ror.build stable

$ sudo ./ror.install
```

### Stable
if build fail you can try to build old stable version</br>
</br>
```
$ git clone https://github.com/vbextreme/RigsOfRodsFedora.git
$ cd RigsOfRodsFedora
$ ./dependency.dnf
$ ./dependency.ogre-caelum
$ ./dependency.mygui

$ ./dependency.angelScript stable1
$ ./ror.build stable1

$ sudo ./ror.install
```
