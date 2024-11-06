---
permalink: /skins/list.html
---
## List of all the skins
{: .no_toc}

{% include secondaryNavigation.html %}

**Skins on this Page:**

* TOC seed list
{:toc}

{% for skin in site.skins %}

### {{ skin.display_name }}

Go to the page for the [{{ skin.display_name }}]({{ skin.url | relative_url }})

{% for diagram in site.diagrams %}

#### {{ diagram.display_name }} shown in {{ skin.display_name }}
{: .no_toc}

{% capture url %}{{ skin.url }}#{{ diagram.name }}{% endcapture %}

{% include figure.html theme=skin diagram=diagram url=url %}

{% endfor %}

Go to the page for the [{{ skin.display_name }}]({{ skin.url | relative_url }})

{% endfor %}
