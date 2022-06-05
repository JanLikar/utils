#!/bin/sh

set -eu

if [ "$#" -ne 2 ]; then
    echo "Usage: s3vim <BUCKET>"
    exit 1
fi

temp=$(mktemp)

aws s3 cp "$1" "$temp"
vim "$temp"
aws s3 cp "$temp" "$1"

trap 'rm $temp' EXIT
