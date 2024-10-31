---
layout: default
---
## All the themes
{: .no_toc}

{% include subNavigation.html %}

* TOC seed list
{:toc}

{% assign themes = site.data.themes %}
{% assign diagrams = site.data.diagrams %}

{% for theme in themes %}
### {{ theme.name }} Theme
<div class ="image-gallery">
{% for diagram in diagrams %}
    <div class="box">
        <a href="../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg">
            <img src="../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg " alt="{{ diagram.name }} in {{ theme.name }}"  class="img-gallery" />
        </a>
    </div>
{% endfor %}
</div>
{% endfor %}
