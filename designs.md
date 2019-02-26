---
layout: page
title: designs
permalink: /designs/
---
{% assign tag_words = 'design' | split:',' | sort %}

  {% for item in (0..site.categories.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
  <h3 id="{{ this_word | cgi_escape }}"><a href="#{{this_word | split: " " | join: '+'}}" class="post-link">{{ this_word }}</a></h3>
  <ul class="post-list">
    {% for post in site.categories[this_word] %}{% if post.title != null %}
    <li itemscope><span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">{{ post.date | date: "%B %d, %Y" }}</time></span> // <a href="{{ post.url }}" class="post-link">{{ post.title }}</a></li>
    {% endif %}{% endfor %}
  </ul>
{% endunless %}{% endfor %}
