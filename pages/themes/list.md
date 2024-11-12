---
permalink: /themes/list.html
---
## List of all the Themes
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Themes on this Page:**

* TOC seed list
{:toc}

{% for theme in site.themes %}

### {{ theme.display_name }}

Go to the page for the [{{ theme.display_name }}]({{ theme.url | relative_url }})

{% for diagram in site.diagrams %}

#### {{ diagram.display_name }} shown in {{ theme.display_name }}
{: .no_toc}

{% capture url %}{{ theme.url }}#{{ diagram.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url %}

{% endfor %}

Go to the page for the [{{ theme.display_name }}]({{ theme.url | relative_url }})

{% endfor %}
