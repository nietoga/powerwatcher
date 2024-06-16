#! /usr/bin/env bash

sudo systemctl stop powerwatcher.service
sudo systemctl disable powerwatcher.service
files=$(find src -type f | sed 's/^src//g')
sudo rm $files
