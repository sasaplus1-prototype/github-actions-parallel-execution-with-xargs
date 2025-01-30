#!/bin/bash

set -euo pipefail

__main() {
  set -x

  printf -- '%s\n' 1 2 3 | xargs -P 0 -n 1 -I % bash -c 'echo %'
  echo "$$?: $?"

  set +x
}
__main "$@"
