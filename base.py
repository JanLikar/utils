#!/usr/bin/env python3 

import sys
from pathlib import Path


def find_base(filename):
    """Search for the specified filename in current working directory's parents."""
    cwd = Path.cwd()

    for search_dir in [cwd, *cwd.parents]:
        if (search_dir / filename).exists():
            return(search_dir)

    eprint(f"{filename} not found.")
    sys.exit(1)


def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


if __name__ == "__main__":
    if not len(sys.argv) == 2:
        eprint("Usage: base <FILENAME>")
        sys.exit(1)
    print(find_base(sys.argv[1]))
