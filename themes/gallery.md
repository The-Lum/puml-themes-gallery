---
layout: default
---
## All the themes
{: .no_toc}

* TOC seed list
{:toc}

{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.diagrams | split: " " %}

{% for theme in themes %}
### {{ theme.name }} Theme
<div class ="image-gallery">
{% for d in diagrams %}
  <div class="box">
    <a href="../gallery/img/{{ d }}-{{ t }}.svg">
      <img src="../gallery/img/{{ d }}-{{ t }}.svg " alt="{{ d }} in {{ t }}"  class="img-gallery" />
    </a>
  </div>
{% endfor %}
</div>
{% endfor %}
