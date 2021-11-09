<hr>
* A
{:toc}
<hr>

# All the Diagrams
{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.input_files | split: " " %}
{% for d in diagrams %}
## {{ d }}
{% for t in themes %}
### {{ d }} ▶ {{ t }}
![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}
