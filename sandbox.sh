#!/bin/sh

set -eu

tempdir=$(mktemp -d)

cd "$tempdir"
"$SHELL"
rm -r "$tempdir"
