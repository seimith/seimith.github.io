---
layout: page
title: writings
permalink: /writings/
---

<div class="post">
  <!-- <center>
    <img src="//raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/hanuman.png" alt="">
  </center> -->
  <div class="post-header">
    <ul class="post-list">
    {% for post in site.posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }} // </span>
        <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
      </li>
    {% endfor %}
  </ul>

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>
  </div>
</div>
