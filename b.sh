#!/bin/bash

set -euo pipefail

__main() {
  set -x

  printf -- '%s\n' 0 1 0 | xargs -P 0 -n 1 -I % bash -c 'exit %'
  printf -- '$?: %s\n' "$?"

  set +x
}
__main "$@"
