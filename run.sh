#!/bin/bash
# This script is intended to be run through run.sh (https://run.jotaen.net)

PROJECT_ROOT=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

strContains() { case $1 in *$2* ) return 0;; *) return 1;; esac ;}

run::updateThemeCollection() {
  pathToThemes="$1"
  for themeFile in "$pathToThemes"/puml-theme-*.puml; do
    themeName=$(basename "$themeFile" .puml | tail -c+12)
    collectionFile="collections/_themes/$themeName.md"

    echo "Found ${themeName} theme:"
    echo "----------------------------"

    if [ ! -e "$collectionFile" ]; then
      {
        echo "---"
        echo "name: $themeName"
        echo "display_name: $themeName Theme"
        echo "author: t.b.d."
        echo "---"

        while IFS= read -r line || [[ -n $line ]]; do
          [ -z "$line" ] && break
          if strContains "$line" "'' "; then
            echo "$line" | tail -c+4
          fi
        done < "$themeFile"

        echo "----------------------------" 1>&2
        echo Stopping 1>&2
      } > "$collectionFile"
    fi

  done;
}

run::updateDiagramCollection() {
  pathToDiagrams="$1"
  for diagramFile in "$pathToDiagrams"/*.puml; do
    diagramName=$(basename "$diagramFile" .puml)
    collectionFile="collections/_diagrams/$diagramName.md"

    echo "Found ${diagramName} diagram:"
    echo "----------------------------"

    if [ ! -e "$collectionFile" ]; then
      {
        echo "---"
        echo "name: $diagramName"
        echo "display_name: $diagramName Diagram"
        echo "author: unknown"
        echo "---"
        echo "_Add a diagram description_."
        echo "----------------------------" 1>&2
        echo Stopping 1>&2
      } > "$collectionFile"
    fi

  done;
}

run::jekyllBuild() {
  pageRoot=${1:-}
  cd "$PROJECT_ROOT/$pageRoot" || exit
  JEKYLL_ENV=production bundle exec jekyll build
}

run::jekyllServe() {
  pageRoot=${1:-}
  cd "$PROJECT_ROOT/$pageRoot" || exit
  bundle exec jekyll serve --livereload --incremental --baseurl=""
}

run::jekyllClean() {
  pageRoot=${1:-}
  cd "$PROJECT_ROOT/$pageRoot" || exit
  bundle exec jekyll clean
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
