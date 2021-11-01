# Welcome to PlantUML themes Gallery

🚧 _Under construction with first public release the 2021-10-31 (using PlantUML, smetana, SVG,...)_ 🚧
	
_Don't hesitate to post questions/remarks on the [discussion page](https://github.com/The-Lum/puml-themes-gallery/discussions)._

Context:
- PlantUML version: {% include_relative lib/plantuml-tag.md %}
- Layout: smetana
- Output image format: SVG


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

