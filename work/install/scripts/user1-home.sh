#!/bin/bash
su -l gast
rsync -av /home/gast//user1-home/* /home/gast/
rsync -av /home/gast/user1-home/\.* /home/gast/
rm -rf user1-home

