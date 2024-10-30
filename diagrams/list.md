# List All the Diagrams in All Themes

* A
{:toc}

---

{% assign diagrams = site.data.diagrams | split: " " %}
{% assign themes = site.data.themes | split: " " %}

{% for d in diagrams %}
## {{ d }}
{% for t in themes %}
### {{ d }} ▶ {{ t }}
{: .no_toc}
![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center}
{% endfor %}
{% endfor %}
