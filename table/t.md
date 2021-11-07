
<head>
<style>
   /*! div style */
  .image-gallery {
    width: 100%;
    display: grid;
    grid-template-columns: repeat(auto-fill,minmax(800px, 1fr));
    justify-content: center;
    padding: 4px;
  }
  .box {
      flex-basis: 25%;
      width: 100%;
      /* padding: 10px; */
      margin: 2px;
  }
  .img-gallery {
   width: 100%;
   height: 200px;
   object-fit: cover;
   transform: scale(1);
   transition: all 0.3s ease-in-out;
  &:hover {
    transform: scale(1.05);
  }
</style>
</head>

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

