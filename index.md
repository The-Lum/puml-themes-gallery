# Welcome to PlantUML themes Gallery

🚧 _Under construction but first public release... (using PlantUML V1.2021.12, smetana, SVG,...)_ 🚧
	
_Don't hesitate to post questions/remarks on the [discussion page](https://github.com/The-Lum/puml-themes-gallery/discussions)._

<hr>
* A
{:toc}
<hr>

# All the themes
{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.input_files | split: " " %}
{% for t in themes %}
## {{ t }}
{% for d in diagrams %}
![image](gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}

