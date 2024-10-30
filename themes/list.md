---
layout: default
---
## List of All the Themes for All Diagrams
{: .no_toc}

* TOC seed list
{:toc}

{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.diagrams | split: " " %}

{% for t in themes %}
## {{ t }} Theme
{% for d in diagrams %}
### {{ d }} Diagram in {{ t }} Theme
### {{ theme.name }} Theme
#### {{ diagram.name }} Diagram in {{ theme.name }} Theme
{: .no_toc}
![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}
