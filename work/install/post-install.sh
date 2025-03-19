#!/bin/bash
# zeitzone einstellen
# sudo mkdir -p /usr/local/lib/systemd/user-environment-generators
sudo ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
cd work/install/scripts
sudo cp environment /etc/
sudo chown root.root /etc/environment
sudo chmod 644 /etc/environment
sudo cp pulse-jack-pre-start.sh /usr/local/bin/
sudo cp pulse-jack-post-start.sh /usr/local/bin/
sudo cp pulse-jack-pre-stop.sh /usr/local/bin/
sudo chmod a+x /usr/local/bin/pulse-jack-pre-start.sh
sudo chmod a+x /usr/local/bin/pulse-jack-post-start.sh
sudo chmod a+x /usr/local/bin/pulse-jack-pre-stop.sh
cd ~/work/install/config
sudo mkdir -p ~gast/.themes
sudo mkdir -p ~admin/.themes
sudo cp -R Adapta-Nokto ~gast/.themes/
sudo chmod 755 ~gast/.themes
sudo chown -R gast:gast ~gast/.themes
sudo chmod 755 ~admin/.themes
sudo cp -R Adapta-Nokto ~admin/.themes/
sudo chown -R admin:admin ~admin/.themes
sudo cp gast /var/lib/AccountsService/users/
sudo chown root:root /var/lib/AccountsService/users/gast
sudo chmod 644 /var/lib/AccountsService/users/gast
sudo cp sudoers /etc/
sudo chown root:root /etc/sudoers
sudo chmod 440 /etc/sudoers
sudo ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime
sudo timedatectl set-local-rtc 0
sudo cp locale.gen /etc/
sudo locale-gen
sudo cp locale.conf /etc/
sudo chown root:root locale.conf
sudo chmod 644 /etc/locale.conf
# sudo echo KEYMAP=de-latin1-nodeadkeys > /etc/vconsole.conf
localectl --no-convert set-keymap de-latin1-nodeadkeys
cd /home/admin/work/install/aur/adwaita-qt-git && makepkg -si && cd ~
cp /home/admin/work/install/scripts/quicklisp.lisp /tmp/
sudo -l gast sbcl --load /tmp/quicklisp.lisp
