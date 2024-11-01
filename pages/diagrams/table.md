---
permalink: /diagrams/table.html
---
## Diagrams Table View

{% include secondaryNavigation.html %}

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
{% capture file %}{{ diagram.name }}-{{ theme.name }}.svg{% endcapture %}
{% capture alt %}{{ diagram.display_name }} in {{ theme.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt %}
            </td>

{% endfor %}

        </tr>

{% endfor %}

    </tbody>
</table>
