# i3-gaps Install for Ubuntu 18.04
This is just a simple instruction set for installing i3-gaps with all the bells and whistles

# Installing i3-gaps

## Dependencies
i3-gaps has some packages that are required for it to work so install these things:
```
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool 
```
You also need to install `libxcb-xrm-dev`, but I got `Unable to locate package libxcb-xrm-dev` when trying to install from the apt repositories on Ubuntu 16.04. If this happens to you, just install it from source using these commands:
```
mkdir tmp
cd /tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install
```

## Installing

gaps also needs to be installed from source so run these commands:
```
cd /tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
```
Now i3-gaps should be installed.

## Extras
```
sudo apt-get install wget ranger mediainfo highlight tmux calcurse  newsbeuter moc qutebrowser imagemagick transmission-cli atool xcompmgr blender pinta gimp  markdown mupdf evince audacity vim-latexsuite rsync syncthing cups screenfetch scrot unzip unrar biber ntfs-3g deepin-terminal zip irssi unzip

```

