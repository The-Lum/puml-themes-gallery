---
permalink: /skins/index.html
---
## Skins Overview
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Skins on this Page:**

* TOC seed list
{:toc}

{% for skin in site.skins %}

### {{ skin.display_name }}

{{ skin.excerpt }}

Go to the page for the [{{ skin.display_name }}]({{ skin.url | relative_url }}).

{% capture url %}{{ skin.url }}{% endcapture %}
{% capture caption %}{{ site.default_diagram.display_name }} shown in {{ skin.display_name }}{% endcapture %}

{% include figure.liquid theme=skin diagram=site.default_diagram url=url caption=caption %}

{% endfor %}
