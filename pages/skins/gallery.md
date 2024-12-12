---
permalink: /skins/gallery.html
---
## Skins Gallery
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Skins on this Page:**

* TOC seed list
{:toc}

{% for skin in site.skins %}

### {{ skin.display_name }}

Go to the page for the [{{ skin.display_name }}]({{ skin.url | relative_url }}).

<div class ="image-gallery">

{% for diagram in site.diagrams %}

{% capture url %}{{ skin.url }}#{{ diagram.name }}{% endcapture %}
{% capture caption %}{{ diagram.display_name }}{% endcapture %}

{% include figure.liquid theme=skin diagram=diagram url=url caption=caption %}

{% endfor %}

</div>

Go to the page for the [{{ skin.display_name }}]({{ skin.url | relative_url }}).

{% endfor %}
