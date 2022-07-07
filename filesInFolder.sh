#!/usr/bin/env bash

count=0
for f in $1/*; do
    count=$(expr $count + 1)
done

echo $count