#!/bin/bash
su -l gast
mv ~/user1-home/* ~/
mv ~/user1-home/\.* ~/
rmdir user1-home

