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
   {{ entry.desc[lang] }}
  </li>
  {% for link in entry.links %}
    🔗 <a href="{{ link.url }}" target="_blank">{{ link.name[lang] }}</a>
  {% endfor %}
  {% if entry.details %}  
    <details>
      <summary>{{ entry.details.summary[lang] }}</summary>
      <ul>
      {% for item in entry.details.items %}
        <li>
          <b>{{ item.date}}</b>: {{ item.desc[lang] }}<br/>
          {% for link in item.links %}
            🔗 <a href="{{ link.url }}" target="_blank">{{ link.name[lang] }}</a>
          {% endfor %}
        </li>
      {% endfor %}
      </ul>
    </details>
  {% endif %}


{% endfor %}
</ul>