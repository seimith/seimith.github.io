---
layout: post
title:  Copy Text With JS
date:   2017-12-09 1:33:45 -0700
categories: JavaScript snippet copy paste ember
---

A whiles ago I wanted to spike a copy and paste. I found this jewel somewhere:

```
var element = this.parentView.get('element')
var snippet = element.getElementsByClassName('snippet')
var selection = window.getSelection();

if(selection.rangeCount > 0) selection.removeAllRanges();

for(var i = 0; i < snippet.length; i++) {
  var range = document.createRange();
  range.selectNode(snippet[i]);
  selection.addRange(range);

  document.execCommand("copy");
}
```
