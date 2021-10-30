echo -e "@startuml\nhelp themes\n@enduml" | java -jar lib/plantuml.jar -pipe -txt | awk '/^ {10,}[[:alnum:]]/ { print $1 }' > lib/all_plantuml_theme.txt
