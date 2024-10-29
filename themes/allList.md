# List All the Themes for All Diagrams

* A
{:toc}

---

{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.diagrams | split: " " %}

{% for t in themes %}
## {{ t }}
{% for d in diagrams %}
### {{ t }} ▶ {{ d }}
{: .no_toc}
![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}
