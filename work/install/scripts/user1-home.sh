#!/bin/bash
# su -l gast
sudo -u gast rsync -av /home/gast//user1-home/* /home/gast/
sudo -u gast sync -av /home/gast/user1-home/\.* /home/gast/
sudo -u gast mv /home/gast/local-projects /home/gast/quicklisp/
sudo -u gast rm -rf /home/gast/user1-home
# exit

