# Welcome to PlantUML Gallery

## All the theme
* TOC
{:toc}

{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.input_files | split: " " %}
{% for t in themes %}
## {{ t }}
{% for d in diagrams %}
![image](gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}

