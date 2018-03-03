#!/bin/sh
# Source: http://typingoutloud.org/raspberry-pi-installing-volumio-pibang/ & Saiyato https://github.com/Saiyato/volumio-1.55-scripts & 
# Test date: 2016-05-10 (on latest OSMC image: OSMC_TGT_rbp1_20160403.img)
# Remember if you edit the script, set line breaks to UNIX format!

echo "Starting volumio setup..."

# Install dependencies
apt-get update
apt-get -y install git-core alsa-utils mpd mpc nginx sqlite3 php5-fpm php5-curl php5-sqlite php5-cli samba samba-common-bin

# Create mountable directories
mkdir -p /mnt/NAS
mkdir -p /mnt/USB
mkdir -p /mnt/UPNP
mkdir -p /var/lib/mpd/music/WEBRADIO

# Remove the www-directory (dummy html file exists) and all contents and recreate it
rm -rf /var/www
mkdir -p /var/www

# Clone volumio into the /var/www directory
git clone https://github.com/volumio/Volumio-WebUI.git /var/www

# Edit the rights for the config files
chmod 775 /var/www/_OS_SETTINGS/etc/rc.local
chmod 755 /var/www/_OS_SETTINGS/etc/php5/mods-available/apc.ini
chmod -R 777 /var/www/command/
chmod -R 777 /var/www/db/
chmod -R 777 /var/www/inc/

# Copy the system files
cp -var /var/www/_OS_SETTINGS/etc /

# Create symbolic links for the shares in mpd
ln -s /mnt/NAS /var/lib/mpd/music/NAS
ln -s /mnt/USB /var/lib/mpd/music/USB
ln -s /mnt/UPNP /var/lib/mpd/music/UPNP

# Clone Pi Juke Box
mkdir -p /home/pi/jukebox
git clone https://github.com/ppsx/Pi-Jukebox.git /home/pi/jukebox
