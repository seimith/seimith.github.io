---
layout: post
title:  My Go-To Media Queries
date:   2019-02-18 3:33:33 -0700
categories: css scss media-queries breakpoints
tags: code
---

When I'm making a website from scratch I always end up scratching my head on what breakpoints to use for the media queries. There's just a TON to use.

These are my ULTRA SIMPLE go-to media query breakpoints. It's super simple because there are only two sizes to think about!

`Small shit vs large shit.`

```css
// This is for views at 850px or less, which is basically when you split your 13"
// browser in half (vertically).

@media (max-width : 850px) {
  ...
}

// This is the counterpart to the previous media query. Anything larger will use
// styles specified in here.

@media (min-width : 850px) {
  ...
}
```
