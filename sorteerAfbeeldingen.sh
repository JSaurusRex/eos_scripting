#!/usr/bin/env bash

mkdir Afbeeldingen

find bestanden/ -name '*.jpg' -exec mv {} Afbeeldingen/ \; -o -name '*.png' -exec mv {} Afbeeldingen/ \;