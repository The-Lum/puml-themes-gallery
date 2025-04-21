---
permalink: /stdlibs/index.html
---
## Standard Libraries Overview
{: .no_toc}

{% include secondaryNavigation.liquid %}

**Standard Libraries on this Page:**

* TOC seed list
{:toc}

{% for stdlib in site.stdlibs %}

### {{ stdlib.display_name }}

{{ stdlib.excerpt }}

{% include linkToPage.liquid diagram=stdlib relation="before" %}

{% capture url %}{{ stdlib.url }}{% endcapture %}
{% capture caption %}{{ stdlib.display_name }} shown in {{ site.default_theme.display_name }}{% endcapture %}

{% include figure.liquid theme=site.default_theme diagram=stdlib url=url caption=caption %}

{% endfor %}
