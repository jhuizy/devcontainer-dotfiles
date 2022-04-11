#!/bin/bash

set -e

sudo apt-get update -y && sudo apt-get install -y vim wget
sudo wget -q https://apt.thoughtbot.com/thoughtbot.gpg.key -O /etc/apt/trusted.gpg.d/thoughtbot.gpg
echo "deb https://apt.thoughtbot.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list
sudo apt-get update -y
sudo apt-get install -y rcm

env RCRC=$HOME/dotfiles/rcrc rcup
rcup
