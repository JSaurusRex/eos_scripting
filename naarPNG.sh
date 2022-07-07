#!/usr/bin/env bash

for img in $1/*.jpg; do
    convert "$img" -resize 128x128 "$1/$(basename $img .jpg).png"
done