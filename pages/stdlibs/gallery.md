---
permalink: /stdlibs/gallery.html
---
## Standard Libraries Gallery
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Standard Libraries on this Page:**

* TOC seed list
{:toc}

{% for stdlib in site.stdlibs %}

### {{ stdlib.display_name }}

{% include linkToPage.liquid diagram=stdlib relation="before" %}

<div class="image-gallery">

{% for theme in site.themes %}
{% unless theme.main_variant %}

{% capture url %}{{ stdlib.url }}#{{ theme.name }}{% endcapture %}
{% capture caption %}{{ theme.display_name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=stdlib url=url caption=caption %}

{% endunless %}
{% endfor %}

</div>

{% include linkToPage.liquid diagram=stdlib relation="after" %}

{% endfor %}
