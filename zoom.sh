#!/bin/bash

wget http://192.168.15.155/zoom_amd64.deb
sudo apt install -y libxcb-xtest0
sudo apt install -y ./zoom_amd64.deb


