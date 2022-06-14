#!/bin/bash
# snail shell builder
output=main.sh

if [ -f snail.config.sh ]; then
    source snail.config.sh
else 
    echo "snail.config.sh not found"
    exit 1
fi

if [ -z "${files[0]}" ]; then
    echo "No files defined in snail.config.sh"
    exit 1
fi
for file in "${files[@]}"
do
    if [ -f $output ]
    then
        rm $output
    fi
    cat $file >> $output
done