---
permalink: /diagrams/
---
## Diagrams Overview
{: .no_toc}

{% include subNavigation.html %}

**Diagrams on this Page:**

* TOC seed list
{:toc}

{% for diagram in site.diagrams %}

### {{ diagram.display_name }}

Go to the page for the [{{ diagram.display_name }}]({{ diagram.url }})

{% if diagram.content %}
    {{ diagram.content | markdownify }}
{% endif %}

{% capture url %}{{ site.default_theme.url }}#{{ diagram.name }}{% endcapture %}
{% capture file %}{{ diagram.name }}-{{ site.default_theme.name }}.svg{% endcapture %}
{% capture alt %}{{ diagram.display_name }} in {{ site.default_theme.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt %}

{% endfor %}
