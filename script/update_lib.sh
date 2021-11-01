mkdir -p lib
curl -L https://sourceforge.net/projects/plantuml/files/plantuml.jar/download -o lib/plantuml.jar
java -jar lib/plantuml.jar -version > lib/README.md
