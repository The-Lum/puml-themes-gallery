#!/bin/bash

strContains() { case $1 in *$2* ) return 0;; *) return 1;; esac ;}

build() {
  JEKYLL_ENV=production bundle exec jekyll build
}

serve() {
  bundle exec jekyll serve --livereload --incremental --baseurl=""
}

clean() {
  bundle exec jekyll clean
}

update() {
  bundle update github-pages
}

cmd="$1"
shift
"$cmd" "$@"
