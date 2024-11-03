---
permalink: /diagrams/gallery.html
---
## Diagrams Gallery
{: .no_toc}

{% include secondaryNavigation.html %}

**Diagrams on this Page:**

* TOC seed list
{:toc}

{% for diagram in site.diagrams %}

### {{ diagram.display_name }}

Go to the page for the [{{ diagram.display_name }}]({{ diagram.url }})

<div class="image-gallery">

{% for theme in site.themes %}

{% capture url %}{{ diagram.url }}#{{ theme.name }}{% endcapture %}
{% capture file %}{{ diagram.name }}-{{ theme.name }}.svg{% endcapture %}
{% capture alt %}{{ diagram.display_name }} in {{ theme.display_name }}{% endcapture %}
{% capture caption %}{{ theme.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt caption=caption %}

{% endfor %}

</div>

Go to the page for the [{{ diagram.display_name }}]({{ diagram.url }})

{% endfor %}