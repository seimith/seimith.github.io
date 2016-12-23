---
layout: post
title:  (Swift) zIndex zPosition
date:   2016-12-23 8:22:15 -0700
categories: ["swift", "zPosition", "snippet"]
---

I'm a web person, and I almost always think web first. 

With CSS there's a property called `z-index` and it's responsible for positioning elements on the `z plane`. 

In iOS, there's an analogous property on the layer of elements that you can augment called, `zPostion`.

```
yourThingHere.layer.zPosition = 1
```
