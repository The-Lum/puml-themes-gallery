---
layout: default
---
## List of All the Diagrams in All Themes
{: .no_toc}

* TOC seed list
{:toc}

{% assign diagrams = site.data.diagrams | split: " " %}
{% assign themes = site.data.themes | split: " " %}

{% for diagram in diagrams %}
### {{ diagram.name }} Diagram
{% for theme in themes %}
#### {{ diagram.name }} Diagram in {{ theme.name }} Theme
{: .no_toc}
![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}
