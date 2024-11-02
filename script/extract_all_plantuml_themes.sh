#!/usr/bin/env bash

THEMES_FILE="$1"
COLLECTION_DIR="$2"

# Extracting theme names directly from plantuml
java -jar lib/plantuml.jar -pipe 2>&1 1>/dev/null << "EOF" |
@startjson
!$themes = %get_all_theme()

!foreach $themeName in $themes
    !log theme $themeName
!endfor

$themes
@endjson
EOF
grep -v '[Log] theme' | awk '/^[[]Log[]] theme [[:alnum:]_]/{ print $3 }' > "$THEMES_FILE"

# Checking that every theme is already part of the `_themes` collection
while IFS= read -r themeName || [[ -n $themeName ]]; do

  # Fix the problem with underscores and Jekyll collections
  if [ "$themeName" == '_none_' ]; then
    collectionFile="$COLLECTION_DIR/none.md"
  else
    collectionFile="$COLLECTION_DIR/$themeName.md"
  fi

  if [ -e "$collectionFile" ]; then
    echo "Theme ${themeName} is already part of the collection $collectionFile"
  else
    echo "Theme ${themeName} was not found in the collection. Creating stub in $collectionFile"
    {
      echo "---"
      echo "name: $themeName"
      echo "display_name: $themeName Theme"
      echo "title: $themeName Theme"
      echo "author: t.b.d."
      echo "source: t.b.d."
      echo "license: t.b.d."
      echo "---"
      echo "_Add a theme description._"

    } > "$collectionFile"
  fi
done < "$THEMES_FILE"
