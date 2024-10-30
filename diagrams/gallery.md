---
layout: default
---
## All the diagrams
{: .no_toc}

* TOC seed list
{:toc}

{% assign diagrams = site.data.diagrams %}
{% assign themes = site.data.themes %}

{% for diagram in diagrams %}
### {{ diagram.name }} Diagram
<div class ="image-gallery">
{% for theme in themes %}
    <div class="box">
        <a href="../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg">
            <img src="../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg " alt="{{ diagram.name }} in {{ theme.name }}"  class="img-gallery" />
        </a>
    </div>
{% endfor %}
</div>
{% endfor %}
