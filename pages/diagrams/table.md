---
permalink: /diagrams/table.html
---
## Diagrams Table View

{% include secondaryNavigation.liquid %}

<table class="image-gallery">
    <thead class="sticky">
        <tr>
            <th>Overview</th>

{% for diagram in site.diagrams %}

            <th>{{ diagram.name }}</th>

{% endfor %}

        </tr>
    </thead>
    <tbody>

{% for theme in site.themes %}

        <tr>
            <th class="sticky">{{ theme.name }}</th>

{% for diagram in site.diagrams %}

            <td>

{% capture url %}{{ diagram.url }}#{{ theme.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url %}

            </td>

{% endfor %}

        </tr>

{% endfor %}

    </tbody>
</table>
