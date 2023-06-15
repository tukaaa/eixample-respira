---
layout: default
title: Aragò, Respira! 
lang: en
---

{% assign lang = page.lang | append: "" %}
{% assign data = site.data.arago %}
{% assign events = site.data.history %}


<img 
  src="{{ data.manifesto.logo.link }}" width={{ data.manifesto.logo.width }} class="center"
  id="top" />

<ul>
{% for item in data %}
    <li><a href="#{{ item[1].anchor }}">{{ item[1].title[lang] }}</a></li> 
{% endfor %}
</ul>

### {{ data.manifesto.lemma[lang] }} <a id={{data.manifesto.anchor}} href="#top">⬆️</a>
{{ data.content }}
{% for entry in data.manifesto.content %}
  <p>{{ entry[lang] }}</p>
{% endfor %}

### {{ data.signs.text[lang] }} <a id={{data.signs.anchor}} href="#top">⬆️</a>
<p> {{data.signs.desc[lang]}} </p>

<p style="text-align:center;">
{% for asset in data.signs.assets %}
  <a class="flyer" href="{{ asset.pdf }}">
    <img 
      src="{{ asset.img }}" 
      width=200
    />
  </a>
{% endfor %}
</p>

### {{ data.social.title[lang] }} <a id={{data.social.anchor}} href="#top">⬆️</a>
<table id="arago">
  {% for item in data.social.items %}
  <tr> 
    <td id="arago-icon">
      <img src="{{ item.icon }}" width="{{ data.social.iconsize }}" />
    </td>
    <td id="arago-desc">
      <p>{{item.desc[lang]}} <a href="{{item.url}}">{{item.url}}</a></p>
    </td>
    {% if item.img != null %}
    <td id="arago-img">
      <img src="{{item.img}}" width="{{ data.social.qrsize }}"/>
    </td>
    {% endif %}
  </tr>
  {% endfor %}
</table>

### {{ data.events.title[lang] }} <a id={{data.events.anchor}} href="#top" class="right">⬆️</a>
<ul class="timeline">
  {% for item in events %}
    {% if item.tag == 'arago' %}
      <li>
      <b>{{ item.date }}</b><br>
      {{ item.desc[lang] }}
      </li>
      {% for link in item.links %}
        🔗 <a href="{{ link.url }}" target="_blank">{{ link.name[lang] }}</a>
      {% endfor %}
    {% endif %}
  {% endfor%}
</ul>