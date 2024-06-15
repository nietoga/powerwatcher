#! /usr/bin/env bash

sudo systemctl stop powerwatcher.timer
sudo systemctl disable powerwatcher.timer
files=$(find src -type f | sed 's/^src//g')
sudo rm $files
