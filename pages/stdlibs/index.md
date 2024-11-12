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

Go to the page for the [{{ stdlib.display_name }}]({{ stdlib.url | relative_url }})

{% capture url %}{{ stdlib.url }}{% endcapture %}
{% capture caption %}{{ stdlib.display_name }} shown in {{ site.default_theme.display_name }}{% endcapture %}

{% include figure.liquid theme=site.default_theme diagram=stdlib url=url caption=caption %}

{% endfor %}
