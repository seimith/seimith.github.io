---
layout: post
title:  Looping Through Files
date:   2016-06-13 8:22:15 -0700
categories: snippet
---
So the other day I needed to loop though some files that included a specific string.
This is how I went through my files and rename it.

```
n *_60.png
  do
      mv "$file"  "${file/.png/@2x.png}"
	done
```
