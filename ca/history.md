---
layout: default
title: Que hem fet
lang: ca
---

## Que hem fet fins ara?

{% assign lang = page.lang | append: "" %}

<ul class="timeline">
{% for entry in site.data.history %}
  <li>
  <b>{{ entry.date }}</b><br>
   {{ entry.desc[page.lang] }}
  </li>
  {% for link in entry.links %}
    🔗 <a href="{{ link.url }}">{{ link.name[page.lang] }}</a>
  {% endfor %}

{% endfor %}
</ul>