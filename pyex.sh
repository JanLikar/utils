#!/bin/sh
# Execute a Python file inside the project's venv.
set -eu

if [ "$#" -lt 1 ]; then
    echo "Usage: pex <COMMAND>"
    exit 1
fi

base=$(./base.py venv)

$base/venv/bin/python "$@"
