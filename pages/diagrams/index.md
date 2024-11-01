---
permalink: /diagrams/index.html
---
## Diagrams Overview
{: .no_toc}

{% include secondaryNavigation.html %}

**Diagrams on this Page:**

* TOC seed list
{:toc}

{% for diagram in site.diagrams %}

### {{ diagram.display_name }}

{{ diagram.excerpt }}

Go to the page for the [{{ diagram.display_name }}]({{ diagram.url }})

{% capture url %}{{ diagram.url }}{% endcapture %}
{% capture file %}{{ diagram.name }}-{{ site.default_theme.name }}.svg{% endcapture %}
{% capture alt %}{{ diagram.display_name }} in {{ site.default_theme.display_name }}{% endcapture %}
{% capture caption %}{{ diagram.display_name }} shown in {{ site.default_theme.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt caption=caption %}

{% endfor %}
