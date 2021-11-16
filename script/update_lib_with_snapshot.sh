mkdir -p lib
curl "https://github.com/plantuml/plantuml/releases/download/snapshot/plantuml-SNAPSHOT.jar" -L -o lib/plantuml.jar
java -jar lib/plantuml.jar -version | head -1 > lib/plantuml-tag.md
echo "::notice title=PlantUML version:: $(cat lib/plantuml-tag.md)"
