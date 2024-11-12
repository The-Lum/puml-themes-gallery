---
permalink: /diagrams/gallery.html
---
## Diagrams Gallery
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Diagrams on this Page:**

* TOC seed list
{:toc}

{% for diagram in site.diagrams %}

### {{ diagram.display_name }}

Go to the page for the [{{ diagram.display_name }}]({{ diagram.url | relative_url }})

<div class="image-gallery">

{% for theme in site.themes %}

{% capture url %}{{ diagram.url }}#{{ theme.name }}{% endcapture %}
{% capture caption %}{{ theme.display_name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url caption=caption %}

{% endfor %}

</div>

Go to the page for the [{{ diagram.display_name }}]({{ diagram.url | relative_url }})

{% endfor %}
