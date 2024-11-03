---
permalink: /diagrams/index.html
---
## Diagrams Overview
{: .no_toc}

{% include secondaryNavigation.html %}

**Diagrams on this Page:**

* TOC seed list
{:toc}

{% for diagram in site.diagrams %}

### {{ diagram.display_name }}

{{ diagram.excerpt }}

Go to the page for the [{{ diagram.display_name }}]({{ diagram.url }})

{% capture url %}{{ diagram.url }}{% endcapture %}
{% capture caption %}{{ diagram.display_name }} shown in {{ site.default_theme.display_name }}{% endcapture %}

{% include figure.html theme=site.default_theme diagram=diagram url=url caption=caption %}

{% endfor %}
