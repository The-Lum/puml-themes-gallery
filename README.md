## Welcome to PlantUML Gallery


### All the theme

{% capture inc_themes %}
{% include_relative lib/all_plantuml_theme.txt %}
{% endcapture %}

{% assign themes = inc_themes | split: " " %}

{% for t in themes %}
#### {{ t }}
{% endfor %}

