#!/bin/bash

if [[ $# -gt 1 ]]; then
    echo "ZLE" 1>&2
    exit 1
fi

   if [[ $# -eq 1 ]]; then
        HOUR=$1
   else
        HOUR=$(date +%k)
   fi
    if [[ $HOUR -lt 8 ]]; then
            echo "Dobre ranko prajem $USER je $(date)"
    elif [[ $HOUR -lt 18 ]]; then
            echo "Dobry dnik prajem $USER je $(date)"
    else
            echo "Dobry vecer prajem $USER je $(date)"
    fi

