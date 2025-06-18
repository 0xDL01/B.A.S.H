#!/bin/bash

echo "G.H.O.S.T   P.R.O.T.O.C.O.L  Initializing..."
sleep1
#check and install tor if not 
if ! command -v tor >/dev/null 2>&1; then
    echo "Tor not found. Installing..."
    sudo apt update && sudo apt install tor -y
else 
    echo "Tor Already installed."
fi

#Ask duration
read -p "Enter how long to stay cloaked (e.g 1m for 1min & 1h for 1hour): " duration

#start tor
echo "Starting Tor service..."
sudo systemctl start tor
sudo systemctl enable tor

#Wait a few seconds and check status
sleep 3
echo "Checking Tor Status..."
sudo systemctl status tor@default | grep "Bootstrapped"

#Cloaked status
echo "Cloak ACTIVE .You are now hidden behind Tor."
proxychains curl -s https://api.myip.com

#Wait for user-defined time
echo "Staying cloaked for: $duration"
sleep "$duration"

#Stop tor after time
echo "Time's up. Disabling Tor..."
sudo systemctl stop tor
sudo systemctl disable tor

#Confirm exit
echo "Cloak OFF.You are now visible."
curl -s https://api.myip.com
