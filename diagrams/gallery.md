# All the diagrams

* A
  {:toc}

---

{% assign diagrams = site.data.diagrams | split: " " %}
{% assign themes = site.data.themes | split: " " %}

{% for d in diagrams %}
## {{ d }}
<div class ="image-gallery">
{% for t in themes %}
  <div class="box">
    <a href="../gallery/img/{{ d }}-{{ t }}.svg">
      <img src="../gallery/img/{{ d }}-{{ t }}.svg " alt="{{ d }} in {{ t }}"  class="img-gallery" />
    </a>
  </div>
{% endfor %}
</div>
{% endfor %}
