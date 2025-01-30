#!/bin/bash

set -euo pipefail

__main() {
  set -x

  local script=()

  printf -- 'echo %s\n' 1 2 3 | xargs -P 0 -n 1 -I % bash -c
  echo "$$?: $?"

  set +x
}
__main "$@"
