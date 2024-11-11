---
layout: default
---
## Welcome to the PlantUML Themes Gallery
{: .no_toc}

🚧 _Under construction with first public release the 2021-10-31 (using PlantUML, smetana, SVG, ...)_ 🚧

Don't hesitate to post questions/remarks on the [discussion page](https://github.com/The-Lum/puml-themes-gallery/discussions).

---

Context:

- **Layout:** smetana
- **Output image format:** SVG
{% include_relative lib/plantuml-versions.md %}

**Direct Access to Specific Pages:**

* TOC seed list
{:toc}

### Overview Pages
{: .no_toc}

View all the themes

* [Themes Overview]({% link pages/themes/index.md %})
* [View all themes in an image gallery]({% link pages/themes/gallery.md %})
* [View all themes in a table]({% link pages/themes/table.md %})
* [View all themes in a big list _(classic approach)_]({% link pages/themes/list.md %})

View all the skins

* [Skins Overview]({% link pages/skins/index.md %})
* [View all skins in an image gallery]({% link pages/skins/gallery.md %})
* [View all skins in a table]({% link pages/skins/table.md %})
* [View all skins in a big list _(classic approach)_]({% link pages/skins/list.md %})

View all the diagrams

* [Diagrams Overview]({% link pages/diagrams/index.md %})
* [View all diagrams in an image gallery]({% link pages/diagrams/gallery.md %})
* [View all diagrams in a table]({% link pages/diagrams/table.md %})
* [View all diagrams in a big list _(classic approach)_]({% link pages/diagrams/list.md %})
 
View all the standard libraries

* [Standard Libraries Overview]({% link pages/stdlibs/index.md %})
* [View all standard libraries in an image gallery]({% link pages/stdlibs/gallery.md %})
* [View all standard libraries in a table]({% link pages/stdlibs/table.md %})
* [View all standard libraries in a big list _(classic approach)_]({% link pages/stdlibs/list.md %})

### Theme-Specific Pages

Or jump directly to any of the pages dedicated to each theme.

{% for theme in site.themes %}

* Go to [{{ theme.display_name }}]({{ theme.url | relative_url }}) page
  {{ theme.excerpt }}

{% endfor %}

### Skin-Specific Pages

Or jump directly to any of the pages dedicated to each skin.

{% for skin in site.skins %}

* Go to [{{ skin.display_name }}]({{ skin.url | relative_url }}) page
  {{ skin.excerpt }}

{% endfor %}

### Diagram-Specific Pages

Or jump directly to any of the pages dedicated to each diagram.

{% for diagram in site.diagrams %}

* Go to [{{ diagram.display_name }}]({{ diagram.url | relative_url }}) page
  {{ diagram.excerpt }}

{% endfor %}

### Standard Library-Specific Pages

Or jump directly to any of the pages dedicated to each standard library.

{% for stdlib in site.stdlibs %}

* Go to [{{ stdlib.display_name }}]({{ stdlib.url | relative_url }}) page
  {{ stdlib.excerpt }}

{% endfor %}
