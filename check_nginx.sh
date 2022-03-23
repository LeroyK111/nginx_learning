#!/bin/bash
status=$(ps -C nginx --no-heading|wc -l)
if [ "${status}" = "0" ]; then
            systemctl start nginx
        status2=$(ps -C nginx --no-heading|wc -l)
        if [ "${status2}" = "0"  ]; then
                systemctl stop keepalived
        fi
fi