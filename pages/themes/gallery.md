---
permalink: /themes/gallery.html
---
## Themes Gallery
{: .no_toc}

{% include secondaryNavigation.html %}

**Themes on this Page:**

* TOC seed list
{:toc}

{% for theme in site.themes %}

### {{ theme.display_name }}

Go to the page for the [{{ theme.display_name }}]({{ theme.url }}).

<div class ="image-gallery">

{% for diagram in site.diagrams %}

{% capture url %} {{ diagram.url }}#{{ theme.name }}{% endcapture %}
{% capture file %}{{ diagram.name }}-{{ theme.name }}.svg{% endcapture %}
{% capture alt %}{{ diagram.display_name }} in {{ theme.display_name }}{% endcapture %}
{% capture caption %}{{ diagram.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt caption=caption %}

{% endfor %}

</div>

{% endfor %}
