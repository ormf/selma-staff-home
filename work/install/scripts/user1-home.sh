#!/bin/bash
# su -l gast
sudo -u gast git clone https://github.com/ormf/cm.git /home/gast/local-projects/cm
sudo -u gast git clone https://github.com/ormf/fomus.git /home/gast/local-projects/fomus
sudo -u gast git clone https://github.com/titola/incudine.git /home/gast/local-projects/incudine
sudo -u gast git clone https://github.com/ormf/cellctl.git /home/gast/local-projects/cellctl
sudo -u gast git clone https://github.com/ormf/cl-orgel-gui.git /home/gast/local-projects/cl-orgel-gui
sudo -u gast rsync -av /home/gast//user1-home/* /home/gast/
sudo -u gast rsync -av /home/gast/user1-home/\.* /home/gast/
sudo -u gast mv /home/gast/local-projects /home/gast/quicklisp/
# sudo -u gast rm -rf /home/gast/user1-home
# exit

