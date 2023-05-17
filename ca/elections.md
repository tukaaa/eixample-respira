---
layout: default
title: Eleccions 28.5
lang: ca
---


{% assign lang = page.lang | append: "" %}
{% assign data = site.data.elections %}

<!-- TOC -->
## <a name="{{ data.title.anchor }}"></a>{{ data.title[lang] }}
<ul>
 <li><a href="#{{ data.proposals.anchor }}">{{ data.proposals.title[lang] }}</a></li>
 <li><a href="#{{ data.debate.anchor }}">{{ data.debate.title[lang] }}</a></li>
<li><a href="#{{ data.outcome.anchor }}">{{ data.outcome.title[lang] }}</a></li>

</ul>

<!-- END TOC -->

### <a name="{{ data.proposals.anchor }}"></a> {{ data.proposals.title[lang] }}

{{ data.proposals.desc[lang] }}

<p style="text-align:center;">
<img src="{{ site.baseurl }}/{{ data.proposals.link }}" alt="{{ data.proposals.title[lang] }}" />
</p>

<p>
<a href="#{{data.title.anchor}}"> {{ data.title.btt[lang] }} </a>
</p>

<!-- NEXT -->        
### <a name="{{ data.debate.anchor }}"></a> {{ data.debate.title[lang] }}

{{ data.debate.desc[lang] }}

<p style="text-align:center;">
<iframe width="{{ data.debate.width }}" height="{{ data.debate.height: 600
 }}" src="https://www.youtube.com/embed/L-hCLfdtYn8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</p>

<p>
<a href="#{{data.title.anchor}}"> {{ data.title.btt[lang] }} </a>
</p>

<!-- NEXT -->        
### <a name="{{ data.outcome.anchor }}"></a> {{ data.outcome.title[lang] }}

<p>
{{ data.outcome.desc[lang] }}
</p>
<p style="text-align:center;">
<img src="{{ data.outcome.link }}" alt="{{ data.outcome.title[lang] }}" />
</p>

<p>
<a href="#{{data.title.anchor}}"> {{ data.title.btt[lang] }} </a>
</p>
