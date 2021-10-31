# View of all the diagrams for all the themes

{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.input_files | split: " " %}
<table>
{% for t in themes %}
  <tr>
    <th>{{ t }}</th>
  {% for d in diagrams %}
    <td> ![image](../gallery/img/{{ d }}-{{ t }}.svg){: .align-center} </td>
  {% endfor %}
  </tr>
  {% endfor %}
</table>
