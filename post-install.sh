#!/bin/bash
cd work/install/scripts
sudo cp pulse-jack-pre-start.sh /usr/local/bin/
sudo cp pulse-jack-post-start.sh /usr/local/bin/
sudo cp pulse-jack-pre-stop.sh /usr/local/bin/
sudo chmod a+x /usr/local/bin/pulse-jack-pre-start.sh
sudo chmod a+x /usr/local/bin/pulse-jack-post-start.sh
sudo chmod a+x /usr/local/bin/pulse-jack-pre-stop.sh

cd work/install/adwaita-qt-git && makepkg -si && cd ~
