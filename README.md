# i3-gaps Install for Ubuntu 18.04
This is just a simple instruction set for installing i3-gaps with all the bells and whistles

# Installing i3-gaps

## Dependencies
i3-gaps has some packages that are required for it to work so install these things:
```
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool libxcb-shape0-dev 
```

## Installing

gaps also needs to be installed from source so run these commands:
```
cd ~
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
Packages to use in many cases that can be useful at times. (Install only if you need them!)
```
sudo apt-get install wget ranger mediainfo highlight tmux calcurse  newsbeuter moc qutebrowser imagemagick transmission-cli atool xcompmgr blender pinta gimp  markdown mupdf evince audacity vim-latexsuite rsync syncthing cups screenfetch scrot unzip unrar biber ntfs-3g deepin-terminal zip irssi unzip

```

