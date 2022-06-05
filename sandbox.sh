#!/bin/sh

set -eu

tempdir=$(mktemp -d)

cd "$tempdir"
"$SHELL"

trap 'rm -r $tempdir' EXIT
