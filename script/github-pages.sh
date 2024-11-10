#!/bin/bash

build() {
  JEKYLL_ENV=production bundle exec jekyll build
}

serve() {
  bundle exec jekyll serve --livereload --incremental --baseurl=""
}

test() {
  PAGES_REPO_NWO=The-Lum/puml-themes-gallery JEKYLL_ENV=production bundle exec jekyll build --baseurl="/fizzbuzz"

  echo "Found bad links:"
  grep -r --exclude='*.svg' 'href=' _site | grep -v -e 'href="http' -e 'href="/fizzbuzz' -e 'markdown-toc' > findings.txt

  echo "Found bad image sources:"
  grep -r --exclude='*.svg' 'src=' _site | grep -v -e 'src="/fizzbuzz' -e 'src="//html5'
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
