#!/usr/bin/env bash

if [[ $1 == *".py" ]]; then
    python $1
fi

if [[ $1 == *".sh" ]]; then
    bash $1
fi

if [[ $1 == *".cc" ]]; then
    cat $1
fi