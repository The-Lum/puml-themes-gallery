---
layout: default
---
## Show All the Diagrams in All Themes

{% include subNavigation.html %}

{% assign diagrams = site.data.diagrams %}
{% assign themes = site.data.themes %}

<table>
    <tr>
        <th>Overview</th>
{% for diagram in diagrams %}
        <th>{{ diagram.name }}</th>
{% endfor %}
    </tr>
{% for theme in themes %}
    <tr>
        <th>{{ theme.name }}</th>
{% for diagram in diagrams %}
        <td>
            <img src="../gallery/img/{{ diagram.name }}-{{ theme.name }}.svg" alt="{{ diagram.name }} in {{ theme.name }}" />
        </td>
{% endfor %}
    </tr>
{% endfor %}
</table>
