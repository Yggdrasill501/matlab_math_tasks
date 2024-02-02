#!/bin/bash

read -p "Enter the name of the Octave/Matlab file to run (without the .m extension): " filename

if [ -f "${filename}.m" ]; then
    echo "Running Octave script: ${filename}.m"
    octave "${filename}.m"
else
    echo "Error: ${filename}.m does not exist."
fi
