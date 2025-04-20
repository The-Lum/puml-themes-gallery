---
permalink: /diagrams/list.html
---
## List of all the Diagrams
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Diagrams on this Page:**

* TOC seed list
{:toc}

{% for diagram in site.diagrams %}

### {{ diagram.display_name }}

{% include linkToPage.liquid diagram=diagram relation="before" %}

{% for theme in site.themes %}
{% unless theme.main_variant %}

#### {{ diagram.display_name }} shown in {{ theme.display_name }}
{: .no_toc}

{% capture url %}{{ diagram.url }}#{{ theme.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url %}

{% endunless %}
{% endfor %}

{% include linkToPage.liquid diagram=diagram relation="after" %}

{% endfor %}
