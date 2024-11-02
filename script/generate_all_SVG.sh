#!/bin/bash

THEMES_FILE="$1"
INPUT_DIR="$2"
OUTPUT_DIR="$3"
PUML_FILE="$4"

while IFS= read -r theme || [[ -n $theme ]]; do
  echo "Converting diagrams from $INPUT_DIR with theme $theme"
  java -jar lib/plantuml.jar -tsvg -stdrpt -nometadata -duration -Playout=smetana -theme "$theme" "$INPUT_DIR"/"$PUML_FILE"

  for old in "$INPUT_DIR"/*.svg; do
    new=$(echo "$old" | sed -e"s/.svg$/_$theme.svg/")
    mv "$old" "$new"
  done

  mkdir -p "$OUTPUT_DIR/$theme"
  mv "$INPUT_DIR"/*.svg "$OUTPUT_DIR/$theme"
done < "$THEMES_FILE"

echo "End"
exit 0
