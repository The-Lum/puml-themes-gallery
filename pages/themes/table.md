---
permalink: /themes/table.html
---
## Themes Table View

{% include secondaryNavigation.liquid %}

<table class="image-gallery">
    <thead class="sticky">
        <tr>
            <th></th>

{% for theme in site.themes %}
{% unless theme.main_variant %}

            <th><a href="{{ theme.url }}">{{ theme.name }}</a></th>

{% endunless %}
{% endfor %}

        </tr>
    </thead>
    <tbody>

{% for diagram in site.diagrams %}

        <tr>
            <th class="sticky"><a href="{{ diagram.url }}">{{ diagram.name }}</a></th>

{% for theme in site.themes %}
{% unless theme.main_variant %}

            <td>

{% capture url %}{{ theme.url }}#{{ diagram.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url %}

            </td>

{% endunless %}
{% endfor %}

        </tr>

{% endfor %}

    </tbody>
</table>
