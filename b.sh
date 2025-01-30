#!/bin/bash

# set -e
set -uo pipefail

__main() {
  set -x

  printf -- '%s\n' 0 1 0 | xargs -P 0 -I % bash -c 'echo %; exit %'
  local -r exit_code="$?"
  printf -- '$?: %s\n' "$?"

  set +x

  exit "$exit_code"
}
__main "$@"
