#! /usr/bin/env bash

sudo cp -rT src /
sudo systemctl enable powerwatcher.service
sudo systemctl start powerwatcher.service
