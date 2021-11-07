tag=$(curl -s https://api.github.com/repos/plantuml/plantuml/releases/latest | jq -r '.tag_name')
echo -n $tag > lib/plantuml-tag-latest.md
echo "::notice:: plantuml-tag-latest: $tag"
