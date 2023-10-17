---
layout: default
title: Que hem fet
lang: ca
---

{% assign lang = page.lang | append: "" %}
{% capture now %}{{'today' | date: '%Y-%m-%d'}}{% endcapture %}

## Events futurs

<ul class="future-timeline">
  {% for item in site.data.history %}
    {% capture posttime %}{{item.date | date: '%Y-%m-%d'}}{% endcapture %}
    {% if posttime >= now %}
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

## Que hem fet fins ara?

<ul class="timeline">
{% for entry in site.data.history %}
  {% capture posttime %}{{entry.date | date: '%Y-%m-%d'}}{% endcapture %}
  {% if posttime < now %}
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
  {% endif %}


{% endfor %}
</ul>