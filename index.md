---
layout: default
---
## Welcome to the PlantUML Themes Gallery

🚧 _Under construction with first public release the 2021-10-31 (using PlantUML, smetana, SVG, ...)_ 🚧

Don't hesitate to post questions/remarks on the [discussion page](https://github.com/The-Lum/puml-themes-gallery/discussions).

---

Context:

- **Layout:** smetana
- **Output image format:** SVG
{% include_relative lib/plantuml-versions.md %}

### Overview Pages

View all the themes

* [Themes Overview]({% link pages/themes/index.md %})
* [View all themes in an image gallery]({% link pages/themes/gallery.md %})
* [View all themes in a table]({% link pages/themes/table.md %})
* [View all themes in a big list _(classic approach)_]({% link pages/themes/list.md %})

View all the diagrams

* [Diagrams Overview]({% link pages/diagrams/index.md %})
* [View all diagrams in an image gallery]({% link pages/diagrams/gallery.md %})
* [View all diagrams in a table]({% link pages/diagrams/table.md %})
* [View all diagrams in a big list _(classic approach)_]({% link pages/diagrams/list.md %})

View all the skins

* [Skins Overview]({% link pages/skins/index.md %})
* [View all skins in an image gallery]({% link pages/skins/gallery.md %})
* [View all skins in a table]({% link pages/skins/table.md %})
* [View all skins in a big list _(classic approach)_]({% link pages/skins/list.md %})

### Theme-Specific Pages

Or jump directly to any of the pages dedicated to each theme.

{% for theme in site.themes %}

* Go to [{{ theme.display_name }}]({{ theme.url | relative_url }}) page
  {{ theme.excerpt }}

{% endfor %}

### Diagram-Specific Pages

Or jump directly to any of the pages dedicated to each diagram.

{% for diagram in site.diagrams %}

* Go to [{{ diagram.display_name }}]({{ diagram.url | relative_url }}) page
  {{ diagram.excerpt }}

{% endfor %}
