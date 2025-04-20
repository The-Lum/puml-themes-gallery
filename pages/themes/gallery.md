---
permalink: /themes/gallery.html
---
## Themes Gallery
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Themes on this Page:**

* TOC seed list
{:toc}

{% for theme in site.themes %}
{% unless theme.main_variant %}

### {{ theme.display_name }}

{% include linkToPage.liquid theme=theme relation="before" %}

<div class ="image-gallery">

{% for diagram in site.diagrams %}

{% capture url %}{{ theme.url }}#{{ diagram.name }}{% endcapture %}
{% capture caption %}{{ diagram.display_name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url caption=caption %}

{% endfor %}

</div>

{% include linkToPage.liquid theme=theme relation="after" %}

{% endunless %}
{% endfor %}
