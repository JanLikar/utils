#!/bin/sh

set -eu
temp=$(mktemp)

aws s3 cp $1 $temp
vim $temp
aws s3 cp $temp $1
