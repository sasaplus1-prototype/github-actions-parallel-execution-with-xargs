#!/bin/bash

set -euo pipefail

__main() {
  set -x

  printf -- '%s\n' 1 2 3 | xargs -P 0 -I % bash -c 'echo %'
  printf -- '$?: %s\n' "$?"

  set +x
}
__main "$@"
