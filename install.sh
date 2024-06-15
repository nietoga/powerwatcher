#! /usr/bin/env bash

sudo cp -rT src /
sudo systemctl enable powerwatcher.timer
sudo systemctl start powerwatcher.timer
