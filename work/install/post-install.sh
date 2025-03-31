#!/bin/bash
# zeitzone einstellen
# sudo mkdir -p /usr/local/lib/systemd/user-environment-generators
sudo ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
cd /home/admin/work/install/scripts
chmod a+x /home/admin/work/install/scripts/user1-home.sh
sudo /home/admin/work/install/scripts/user1-home.sh
# sudo cp environment /etc/
# sudo chown root.root /etc/environment
# sudo chmod 644 /etc/environment
# sudo cp pulse-jack-pre-start.sh /usr/local/bin/
# sudo cp pulse-jack-post-start.sh /usr/local/bin/
# sudo cp pulse-jack-pre-stop.sh /usr/local/bin/
# sudo chmod a+x /usr/local/bin/pulse-jack-pre-start.sh
# sudo chmod a+x /usr/local/bin/pulse-jack-post-start.sh
# sudo chmod a+x /usr/local/bin/pulse-jack-pre-stop.sh
cd /home/admin/work/install/config
sudo mkdir -p /home/gast/.themes
sudo mkdir -p /home/admin/.themes
sudo cp -R Adapta-Nokto /home/gast/.themes/
sudo chmod 755 /home/gast/.themes
sudo chown -R gast:gast /home/gast/.themes
sudo chmod 755 /home/admin/.themes
sudo cp -R Adapta-Nokto /home/admin/.themes/
sudo chown -R admin:admin /home/admin/.themes
sudo ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime
sudo timedatectl set-local-rtc 0
sudo locale-gen
# sudo echo KEYMAP=de-latin1-nodeadkeys > /etc/vconsole.conf
localectl --no-convert set-keymap de-latin1-nodeadkeys
sudo pacman -Rdd libwireplumber pipewire-audio pipewire-pulse pipewire-session-manager qpwgraph wireplumber
sudo pacman -S pulseaudio pulseaudio-alsa pulseaudio-jack pulseaudio-zeroconf
cd /home/admin/work/install/aur/adwaita-qt-git && makepkg -si --noconfirm && cd /home/admin
cd /home/admin/work/install/aur/ && git clone https://aur.archlinux.org/cpupower-gui-git.git
cd cpupower-gui-git && makepkg -si --noconfirm && cd /home/admin
