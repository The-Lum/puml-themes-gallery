# All the themes
{% assign themes = site.data.themes | split: " " %}
{% assign diagrams = site.data.input_files | split: " " %}

<div class ="image-gallery">
{% for t in themes %}
{% for d in diagrams %}
    <div class="box">
    <a href="../gallery/img/{{ d }}-{{ t }}.svg">
      <img src="../gallery/img/{{ d }}-{{ t }}.svg " alt="{{ d }}"  class="img-gallery" />
     </a>
    </div>
 {% endfor %}
 {% endfor %}
</div>
