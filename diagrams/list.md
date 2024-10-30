# List of All the Diagrams in All Themes
{: .no_toc}

* TOC seed list
{:toc}

{% assign diagrams = site.data.diagrams | split: " " %}
{% assign themes = site.data.themes | split: " " %}

{% for d in diagrams %}
## {{ d }} Diagram
{% for t in themes %}
### {{ d }} Diagram in {{ t }} Theme
{: .no_toc}
![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}
