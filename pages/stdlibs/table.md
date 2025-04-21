---
permalink: /stdlibs/table.html
---
## Standard Libraries Table View

{% include secondaryNavigation.liquid %}

<table class="image-gallery">
    <thead class="sticky">
        <tr>
            <th>Overview</th>

{% for stdlib in site.stdlibs %}

            <th>{{ stdlib.name }}</th>

{% endfor %}

        </tr>
    </thead>
    <tbody>

{% for theme in site.themes %}
{% unless theme.main_variant %}

        <tr>
            <th class="sticky">{{ theme.name }}</th>

{% for stdlib in site.stdlibs %}

            <td>

{% capture url %}{{ stdlib.url }}#{{ theme.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=stdlib url=url %}

            </td>

{% endfor %}

        </tr>

{% endunless %}
{% endfor %}

    </tbody>
</table>
