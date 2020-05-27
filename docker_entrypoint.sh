#!/bin/sh

set -e

echo "=== ENTRYPOINT ==="

COMMAND="$1"

echo "=== BUNDLING ==="
bundle check || bundle install --jobs 20 --retry 5

case "$COMMAND" in
  test)
    echo "=== RUNNING TEST SUITE ==="
    rake test
    ;;
  lint)
    echo "=== RUNNING LINTER ==="
    rubocop -a
    ;;
  *)
    echo "=== RUNNING COMAND  $*==="
    sh -c "$*"
    ;;
esac