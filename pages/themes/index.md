---
permalink: /themes/index.html
---
## Themes Overview
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Themes on this Page:**

* TOC seed list
{:toc}

{% for theme in site.themes %}
{% unless theme.main_variant %}

### {{ theme.display_name }}

{{ theme.excerpt }}

{% include linkToPage.liquid theme=theme relation="before" %}

{% capture url %}{{ theme.url }}{% endcapture %}
{% capture caption %}{{ site.default_diagram.display_name }} shown in {{ theme.display_name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=site.default_diagram url=url caption=caption %}

{% endunless %}
{% endfor %}
