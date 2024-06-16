#! /usr/bin/env bash

source /etc/powerwatcher.conf

sleep $WAIT_BEFORE_START

while true
do
    should_shutdown=true

    for i in $(seq 1 1 $NUMBER_OF_ATTEMPTS)
    do
        if ping -c 1 $IP
        then
            should_shutdown=false
            break
        fi

        sleep $WAIT_BETWEEN_ATTEMPTS
    done

    if $should_shutdown
    then
        shutdown now
    fi

    sleep $WAIT_BETWEEN_EXECUTIONS
done
