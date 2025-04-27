---
permalink: /diagrams/table.html
---
## Diagrams Table View

{% include secondaryNavigation.liquid %}

<table class="image-gallery">
    <thead class="sticky">
        <tr>
            <th></th>

{% for diagram in site.diagrams %}

            <th><a href="{{ diagram.url }}">{{ diagram.name }}</a></th>

{% endfor %}

        </tr>
    </thead>
    <tbody>

{% for theme in site.themes %}
{% unless theme.main_variant %}

        <tr>
            <th class="sticky"><a href="{{ theme.url }}">{{ theme.name }}</a></th>

{% for diagram in site.diagrams %}

            <td>

{% capture url %}{{ diagram.url }}#{{ theme.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url %}

            </td>

{% endfor %}

        </tr>

{% endunless %}
{% endfor %}

    </tbody>
</table>
