#!/bin/bash 
set -m
/usr/bin/dockerd &
sudo -u gns3user /usr/bin/gns3server
fg %1
