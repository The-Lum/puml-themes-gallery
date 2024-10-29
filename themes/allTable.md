# Show All the Themes for All Diagrams

{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.diagrams | split: " " %}

<table>
  <tr>
    <th></th>
{% for t in themes %}
    <th>{{ t }}</th>
{% endfor %}
  </tr>
{% for d in diagrams %}
  <tr>
    <th>{{ t }}</th>
{% for t in themes %}
    <td>
      <img src="../gallery/img/{{ d }}-{{ t }}.svg" alt="{{ d }} in {{ t }}" />
    </td>
{% endfor %}
  </tr>
{% endfor %}
</table>
