#!/bin/bash

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo $PWD
ls
tree run

secret_file_path='./run/secrets/mysecret'

# secret_file_path="secretfile"

secret=$(<"$secret_file_path")


echo "1"
echo "$secret"
echo "2"

export secret_id="user1"
export secret_pass="$secret"

echo "User name and password:"
echo "$secret_id"
echo "$secret_pass"