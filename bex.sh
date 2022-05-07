#!/bin/sh
# Executes the provided command in first parent dir containing
# a .bex-marker file or any of supported well-known files.
# Example: `bex make` runs make in first directory containing a Makefile.

set -eu

if [ "$#" -lt 1 ]; then
    echo "Usage: bex <COMMAND>"
    exit 1
fi

if [ "$1" = "make" ]; then
    filename="Makefile"
else
    filename=".bex-marker"
fi

base=$(./base.py $filename)

cd $base
"$@"
