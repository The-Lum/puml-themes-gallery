#!/bin/bash

mkdir -p lib
tag=$(curl -s https://api.github.com/repos/plantuml/plantuml/releases/latest | jq -r '.tag_name')
curl "https://github.com/plantuml/plantuml/releases/download/${tag}/plantuml-${tag#v}.jar" -L -o lib/plantuml.jar

java -jar lib/plantuml.jar -version | grep -e 'PlantUML version' -e 'Dot version:' | sed -E 's/([^:]+)version:?(.+)/- **\1version:**\2/' > lib/plantuml-versions.md
echo "::notice title=PlantUML version:: $(head -n 1 lib/plantuml-versions.md)"
