---
layout: default
---
## List of All the Themes for All Diagrams
{: .no_toc}

* TOC seed list
{:toc}

{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.diagrams | split: " " %}

{% for theme in themes %}
### {{ theme.name }} Theme
{% for diagram in diagrams %}
#### {{ diagram.name }} Diagram in {{ theme.name }} Theme
{: .no_toc}
![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}
