---
layout: default
---
## List of All the Diagrams in All Themes
{: .no_toc}

{% include quickNavigation.html %}

* TOC seed list
{:toc}

{% assign diagrams = site.data.diagrams %}
{% assign themes = site.data.themes %}

{% for diagram in diagrams %}
### {{ diagram.name }} Diagram
{% for theme in themes %}
#### {{ diagram.name }} Diagram in {{ theme.name }} Theme
{: .no_toc}
![image](../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg){: .align-center}
{% endfor %}
{% endfor %}
