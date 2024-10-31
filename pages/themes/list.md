---
layout: default
---
## List of All the Themes for All Diagrams
{: .no_toc}

{% include subNavigation.html %}

* TOC seed list
{:toc}

{% assign themes = site.data.themes %}
{% assign diagrams = site.data.diagrams %}

{% for theme in themes %}
### {{ theme.name }} Theme
{% for diagram in diagrams %}
#### {{ diagram.name }} Diagram in {{ theme.name }} Theme
{: .no_toc}
![{{ diagram.name }} in {{ theme.name }}](../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg)
{% endfor %}
{% endfor %}
