# Rigs of Rods installer for Fedora
script for build and install RoR game</br>
Automatic download source</br>
Released under GPL v3

## Revision
0.4 more simple way to build stable version
0.3 stable version
0.2 auto rebuild angelcript
0.1 add missing package: openal, libcurl, boost-system
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

### Stable
if build fail you can try to build stable version</br>
</br>
```
./ror.build stable
```
