---
permalink: /themes/table.html
---
## Themes Table View

{% include secondaryNavigation.liquid %}

<table class="image-gallery">
    <thead class="sticky">
        <tr>
            <th>Overview</th>

{% for theme in site.themes %}

            <th>{{ theme.name }}</th>

{% endfor %}

        </tr>
    </thead>
    <tbody>

{% for diagram in site.diagrams %}

        <tr>
            <th class="sticky">{{ diagram.name }}</th>

{% for theme in site.themes %}

            <td>

{% capture url %}{{ theme.url }}#{{ diagram.name }}{% endcapture %}

{% include figure.liquid theme=theme diagram=diagram url=url %}

            </td>

{% endfor %}

        </tr>

{% endfor %}

    </tbody>
</table>
