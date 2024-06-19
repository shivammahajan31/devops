#!/bin/bash
while true
do
    cd \Users\Shivam\Downloads\devopss
    git add .
    if ! git diff-index --quiet HEAD; then
        git commit -m "Auto commit"
    fi
    sleep 10
done

