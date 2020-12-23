#!/bin/bash


function checklive() {
    count=`ps aux | grep $1 | grep -v "grep" | wc -l`
    if [ 0 == $count ]; then
        exit 1
    else
        exit 0
    fi
}

checklive iTerm3

