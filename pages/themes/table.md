---
layout: default
---
## Show All the Themes for All Diagrams

{% include subNavigation.html %}

{% assign themes = site.data.themes %}
{% assign diagrams = site.data.diagrams %}

<table>
    <tr>
        <th>Overview</th>
{% for theme in themes %}
        <th>{{ theme.name }}</th>
{% endfor %}
    </tr>
{% for diagram in diagrams %}
    <tr>
        <th>{{ diagram.name }}</th>
{% for theme in themes %}
        <td>
            <img src="../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg" alt="{{ diagram.name }} in {{ theme.name }}" />
        </td>
{% endfor %}
    </tr>
{% endfor %}
</table>
