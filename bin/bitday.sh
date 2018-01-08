#!/bin/bash

while true; do
TIME= $(date +%H)
PCNR= $(( ($TIME /2) +1 ))
   
    gsettings set org.gnome.desktop.background \ picture-uri "file:///${HOME}/Pictures/bitday/bitday${PCNR}.png"
    sleep 1h
    echo "There are no bitday images in your local Pictures/bitday."
   
