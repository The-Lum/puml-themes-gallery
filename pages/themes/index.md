---
permalink: /themes/
---
## Themes Overview
{: .no_toc}

{% include subNavigation.html %}

**Themes on this Page:**

* TOC seed list
{:toc}

{% for theme in site.themes %}

### {{ theme.display_name }}

Go to the page for the [{{ theme.display_name }}]({{ theme.url }}).

{% if theme.content %}
{{ theme.content | markdownify }}
{% endif %}

{% capture url %}{{ sitte.default_diagram.url }}#{{ theme.name }}{% endcapture %}
{% capture file %}{{ site.default_diagram.name }}-{{ theme.name }}.svg{% endcapture %}
{% capture alt %}{{ site.default_diagram.display_name }} in {{ theme.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt %}

{% endfor %}
