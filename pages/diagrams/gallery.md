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

{% include linkToPage.liquid diagram=diagram relation="before" %}

<div class="image-gallery">

{% for theme in site.themes %}
{% unless theme.main_variant %}

{% capture url %}{{ diagram.url }}#{{ theme.name }}{% endcapture %}
{% capture caption %}{{ theme.display_name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url caption=caption %}

{% endunless %}
{% endfor %}

</div>

{% include linkToPage.liquid diagram=diagram relation="after" %}

{% endfor %}
