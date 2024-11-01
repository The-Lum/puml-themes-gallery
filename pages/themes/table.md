---
permalink: /themes/table.html
---
## Themes Table View

{% include subNavigation.html %}

<table>
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
{% capture url %} {{ diagram.url }}#{{ theme.name }}{% endcapture %}
{% capture file %}{{ diagram.name }}-{{ theme.name }}.svg{% endcapture %}
{% capture alt %}{{ diagram.display_name }} in {{ theme.display_name }}{% endcapture %}

{% include figure.html url=url file=file alt=alt %}
            </td>

{% endfor %}

        </tr>

{% endfor %}

    </tbody>
</table>
