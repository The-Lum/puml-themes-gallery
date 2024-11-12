---
permalink: /skins/table.html
---
## Skins Table View

{% include secondaryNavigation.liquid %}

<table class="image-gallery">
    <thead class="sticky">
        <tr>
            <th>Overview</th>

{% for skin in site.skins %}

            <th>{{ skin.name }}</th>

{% endfor %}

        </tr>
    </thead>
    <tbody>

{% for diagram in site.diagrams %}

        <tr>
            <th class="sticky">{{ diagram.name }}</th>

{% for skin in site.skins %}

            <td>

{% capture url %}{{ skin.url }}#{{ diagram.name }}{% endcapture %}

{% include figure.liquid theme=skin diagram=diagram url=url %}

            </td>

{% endfor %}

        </tr>

{% endfor %}

    </tbody>
</table>
