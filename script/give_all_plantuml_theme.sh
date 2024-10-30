mkdir -p _data
echo "name" > _data/themes.csv
echo -e "@startuml\nhelp themes\n@enduml" | java -jar lib/plantuml.jar -pipe -txt | awk '/^ {10,}[[:alnum:]_]/ { print $1 }' >> _data/themes.csv
