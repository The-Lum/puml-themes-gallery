mkdir -p lib
rm lib/plantuml.jar
#curl -L https://sourceforge.net/projects/plantuml/files/plantuml.jar/download -o lib/plantuml.jar

tag=$(curl -s https://api.github.com/repos/plantuml/plantuml/releases/latest | jq -r '.tag_name')
echo $tag > lib/plantuml-tag.md
curl -v -L "https://github.com/plantuml/plantuml/releases/download/${tag}/plantuml-${tag#v}.jar" -o lib/plantuml.jar

java -jar lib/plantuml.jar -version > lib/README.md
