---
layout: page
title: Categories
permalink: /categories/
---

<div id="categories">
{% capture site_categories %}{% for tag in site.categories %}{{ tag | first }}
{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tag_words = site_categories | split:',' | sort %}

  <ul class="tag-box inline">
  {% for item in (0..site.categories.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
    <li><a href="#{{ this_word | cgi_escape }}">{{ this_word | upcase }} <span>({{ site.categories[this_word].size }})</span></a></li>
  {% endunless %}{% endfor %}
  </ul>

  {% for item in (0..site.categories.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
  <h3 id="{{ this_word | cgi_escape }}"><a href="#{{this_word | split: " " | join: '+'}}">{{ this_word | upcase}}</a></h3>
  <ul class="posts">
    {% for post in site.categories[this_word] %}{% if post.title != null %}
    <li itemscope><a href="{{ post.url }}">{{ post.title }}</a> <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">{{ post.date | date: "%B %d, %Y" }}</time></span></li>
    {% endif %}{% endfor %}
  </ul>
  {% endunless %}{% endfor %}
  <!-- Thank you: https://blog.lanyonm.org/articles/2013/11/21/alphabetize-jekyll-page-tags-pure-liquid.html -->
</div>


