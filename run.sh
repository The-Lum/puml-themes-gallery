#!/bin/bash
# This script is intended to be run through run.sh (https://run.jotaen.net)

PROJECT_ROOT=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

strContains() { case $1 in *$2* ) return 0;; *) return 1;; esac ;}

run::jekyllServe() {
  pageRoot=${1:-}
  cd "$PROJECT_ROOT/$pageRoot" || exit
  bundle exec jekyll serve --baseurl=""
}

run::jekyllUpdate() {
  bundle update github-pages
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  cmd="$1"
  shift

  echo "Running task run::$cmd"
  "run::$cmd" "$@"
fi
