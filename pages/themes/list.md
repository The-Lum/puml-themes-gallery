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
{% unless theme.main_variant %}

### {{ theme.display_name }}

{% include linkToPage.liquid theme=theme relation="before" %}

{% for diagram in site.diagrams %}

#### {{ diagram.display_name }} shown in {{ theme.display_name }}
{: .no_toc}

{% capture url %}{{ theme.url }}#{{ diagram.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url %}

{% endfor %}

{% include linkToPage.liquid theme=theme relation="after" %}

{% endunless %}
{% endfor %}
