#!/usr/bin/env bash

echo "give a name: "

read name
if [ -z "$name" ]; then
    name=$(whoami)
fi

echo "give a password: "
read -s pw

pwCount=$(echo $pw | wc -c)

while [ $pwCount -lt 8 ]; do
    echo "password is to short, at least 8 characters are required"
    read -s pw
    pwCount=$(echo $pw | wc -c)
done

echo "repeat password"
read -s repw

while [ "$pw" != "$repw" ]; do
    echo "password dont match"
    read -s repw
done

echo "$name" >> $1
echo $pw | md5sum >> $1