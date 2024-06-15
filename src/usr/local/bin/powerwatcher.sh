#! /usr/bin/env bash

source /etc/powerwatcher.conf

should_shutdown=true

for i in $(seq 1 1 $NUMBER_OF_ATTEMPTS)
do
    if ping -c 1 $IP
    then
        should_shutdown=false
        break
    fi

    sleep $INTERVAL_IN_SECONDS
done

if $should_shutdown
then
    shutdown now
fi
