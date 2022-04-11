#!/bin/bash

set -e

wget -q https://apt.thoughtbot.com/thoughtbot.gpg.key -O /etc/apt/trusted.gpg.d/thoughtbot.gpg
echo "deb https://apt.thoughtbot.com/debian/ stable main" | tee /etc/apt/sources.list.d/thoughtbot.list
apt-get update -y
apt-get install -y rcm

env RCRC=$HOME/dotfiles/rcrc rcup
rcup
