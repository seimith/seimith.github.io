---
layout: post
title:  Unable to run gem install XYZ on OS X El Capitan
date:   2016-10-29 8:22:15 -0700
categories: ["gem", "el capitan", "install", "troubleshoot"]
---

If you've upgraded your computer to El Capitan and you're getting errors while trying to install some gems, this is due to  El Capitan's introduction of SIP (System Integrity Protection).

Read more about SIP here: [https://support.apple.com/en-us/HT204899][link]

The other day I was trying to run `gem install bundler` and got a permissions error. Not cool.

```
gem install bundler

Fetching: bundler-1.13.6.gem (100%)
ERROR:  While executing gem ... (Gem::FilePermissionError)
You don't have write permissions for the /usr/bin directory.
```

Try installing to your directory: 

```
gem install bundler -n /usr/local/bin
```

[link]:https://support.apple.com/en-us/HT204899 
