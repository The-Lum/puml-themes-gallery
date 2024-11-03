---
layout: default
---
## Welcome to the PlantUML Themes Gallery

🚧 _Under construction with first public release the 2021-10-31 (using PlantUML, smetana, SVG,...)_ 🚧

Don't hesitate to post questions/remarks on the [discussion page](https://github.com/The-Lum/puml-themes-gallery/discussions).

---

Context:

- Layout: smetana
- Output image format: SVG
- PlantUML version: {% include_relative lib/plantuml-tag.md %}

### Overview Pages

View all the themes

* [Themes Overview](themes/index.html)
* [View all themes in an image gallery](themes/gallery.html)
* [View all themes in a table](themes/table.html)
* [View all themes in a big list (classic approach)](themes/list.html)

View all the diagrams

* [Diagrams Overview](diagrams/index.html)
* [View all diagrams in an image gallery](diagrams/gallery.html)
* [View all diagrams in a table](diagrams/table.html)
* [View all diagrams in a big list (classic approach)](diagrams/list.html)

### Theme-Specific Pages

Or jump directly to any of the pages dedicated to each theme.

{% for theme in site.themes %}

* Go to [{{ theme.display_name }}]({{ theme.url }}) page
  {{ theme.excerpt }}

{% endfor %}

### Diagram-Specific Pages

Or jump directly to any of the pages dedicated to each diagram.

{% for diagram in site.diagrams %}

* Go to [{{ diagram.display_name }}]({{ diagram.url }}) page
  {{ diagram.excerpt }}

{% endfor %}
