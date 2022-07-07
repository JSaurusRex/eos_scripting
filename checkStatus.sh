#!/usr/bin/env bash

rm $3 2> /dev/null

for f in $1/*; do
    if $2 $f 2> /dev/null > /dev/null; then
        echo $f gelukt >> $3
    else
        echo $f niet gelukt >> $3
    fi
done