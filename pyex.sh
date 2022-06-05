#!/bin/sh
# Execute a Python file inside the project's venv.
set -eu

if [ "$#" -lt 1 ]; then
    echo "Usage: pyex <COMMAND>"
    exit 1
fi

base=$(base venv)

command="$base/venv/bin/$1"
shift 1
"$command" "$*"
