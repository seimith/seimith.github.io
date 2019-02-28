---
layout: post
title:  Transform camelCase a Camel Case with Regex
date:   2018-01-15 8:23:33 -0700
categories: snippet regex camelCase javascript
tags: code
---

I'm quite terrible at regex, but lately I figured that I actually really need to learn it.

Below is a snippet for transforming "camelCase" strings into "Camel Case" strings.

```
var camelCaseWord = "camelCaseWord";
camelCaseWord.replace(/([A-Z])/g, ' $1').replace(/^[a-z]/g, function(firstLetter) {
  return firstLetter.toUpperCase()
});
```
