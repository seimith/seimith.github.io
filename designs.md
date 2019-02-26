---
layout: page
title: designs
permalink: /designs/
---
{% for tag in site.tags %}
  {% assign t = tag | first %}
  {% assign posts = tag | last %}

<ul>
{% for post in posts %}
  {% if post.tags contains 'design' %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <span class="date">{{ post.date | date: "%B %-d, %Y"  }}</span>
  </li>
  {% endif %}
{% endfor %}
</ul>
{% endfor %}
