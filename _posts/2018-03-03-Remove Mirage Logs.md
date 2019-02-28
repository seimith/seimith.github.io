---
layout: post
title:  Remove Mirage Logs
date:   2018-03-03  3:33:33 -0700
categories: ember mirage snippet console logs
tags: code
---

These past couple of days I've been using Mirage, and the console will output a bunch of messages by default. To turn them off, use the following in your `config.js`:

```
this.logging = false;
```
