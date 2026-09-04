#!/usr/bin/env python3

import subprocess
import sys
from pathlib import Path
from typing import Final

ROOT_DIR: Final = Path(__file__).resolve().parent.parent
SVD_FILE: Final = ROOT_DIR / "svd" / "R7FA4M1AB.svd"
OUTPUT_DIR: Final = ROOT_DIR / "src" / "generated" / "r7fa4m1ab"


def main() -> int:
    try:
        subprocess.run(
            [
                "svd2ada",
                "-o",
                str(OUTPUT_DIR),
                str(SVD_FILE),
            ],
            check=True,
        )
    except subprocess.CalledProcessError as error:
        return error.returncode
    except FileNotFoundError:
        print("error: svd2ada was not found", file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    sys.exit(main())