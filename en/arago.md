---
layout: default
title: Aragò, Respira! 
lang: en
---

{% assign lang = page.lang | append: "" %}
{% assign data = site.data.arago %}


<img src="{{ data.manifesto.logo.link }}" width={{ data.manifesto.logo.width }} class="center"/>

### {{ data.manifesto.title[lang] }}
{{ data.content }}
{% for entry in data.manifesto.content %}
  <p>{{ entry[lang] }}</p>
{% endfor %}

### {{ data.signature.link[lang] }}

<a href="{{ data.signature.link.url }}">{{ data.signature.text[lang]}}</a>

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
