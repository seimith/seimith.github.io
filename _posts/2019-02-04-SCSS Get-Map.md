---
layout: post
title:  SCSS Get-Map
date:   2019-02-04 3:33:33 -0700
categories: scss get-map variables
---

Creating variables, or tokens, is pretty handy when you want to tidy up your styles. You can create what I call a grouped variable.

```
$my-cool-variable: (
  light: #FFFFFF,
  medium: #CCCCCC,
  heavy: #000000,
);
```

You can then use the variable like this:

```
a {
  color: map-get($my-cool-variable, medium);
};
```
