---
permalink: /themes/list.html
---
## List of all the Themes
{: .no_toc}

{% include secondaryNavigation.html %}

**Themes on this Page:**

* TOC seed list
{:toc}

{% for theme in site.themes %}

### {{ theme.display_name }}

Go to the page for the [{{ theme.display_name }}]({{ theme.url }})

{% for diagram in site.diagrams %}

#### {{ diagram.display_name }} in {{ theme.display_name }}
{: .no_toc}

{% capture url %} {{ diagram.url }}#{{ theme.name }}{% endcapture %}
{% capture file %}{{ diagram.name }}-{{ theme.name }}.svg{% endcapture %}
{% capture alt %}{{ diagram.display_name }} in {{ theme.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt %}

{% endfor %}
{% endfor %}
