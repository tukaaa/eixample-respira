---
layout: default
title: Aragò, Respira! 
lang: ca
---

{% assign lang = page.lang | append: "" %}
{% assign data = site.data.arago %}


<img src="{{ data.manifesto.logo.link }}" width={{ data.manifesto.logo.width }} class="center"/>

### {{ data.manifesto.title[lang] }}
{{ data.content }}
{% for entry in data.manifesto.content %}
  <p>{{ entry[lang] }}</p>
{% endfor %}

### {{ data.signs.text[lang] }}
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

### {{ data.social.title[lang] }}
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
