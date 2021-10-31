# Welcome to PlantUML Gallery

## All the theme
{% assign themes = site.data.themes | split: " " %}
{% for t in themes %}
* {{ t }}
{% endfor %}

{% for t in themes %}
## {{ t }}
![Alt text](gallery/img/Activity-{{ t }}.svg)
{% endfor %}
