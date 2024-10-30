---
layout: default
---
## List of All the Themes for All Diagrams
{: .no_toc}

{% include quickNavigation.html %}

* TOC seed list
{:toc}

{% assign themes = site.data.themes %}
{% assign diagrams = site.data.diagrams %}

{% for theme in themes %}
### {{ theme.name }} Theme
{% for diagram in diagrams %}
#### {{ diagram.name }} Diagram in {{ theme.name }} Theme
{: .no_toc}
![image](../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg){: .align-center}
{% endfor %}
{% endfor %}
