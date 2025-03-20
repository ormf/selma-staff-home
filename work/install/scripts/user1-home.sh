#!/bin/bash
# su -l gast
rsync -av /home/gast//user1-home/* /home/gast/
rsync -av /home/gast/user1-home/\.* /home/gast/
mv /home/gast/local-projects /home/gast/quicklisp/
rm -rf user1-home
# exit

