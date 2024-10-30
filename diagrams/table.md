# Show All the Diagrams in All Themes

{% assign diagrams = site.data.diagrams | split: " " %}
{% assign themes = site.data.themes | split: " " %}

<table>
    <tr>
        <th>Overview</th>
{% for d in diagrams %}
        <th>{{ d }}</th>
{% endfor %}
    </tr>
{% for t in themes %}
    <tr>
        <th>{{ t }}</th>
{% for d in diagrams %}
        <td>
            <img src="../gallery/img/{{ d }}-{{ t }}.svg" alt="{{ d }} in {{ t }}" />
        </td>
{% endfor %}
    </tr>
{% endfor %}
</table>
