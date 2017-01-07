---
layout: post
title:  (Swift) Troubleshooting Lost Simulators
date:   2017-01-06 8:22:15 -0700
categories: ["swift", "troubleshoot"]
---

Have you ever ran into the issue of all of your simulators disappearing?

I have. My buddy created a new project and when I cloned her repo, all of my simulators cleared out!

Turned out that I needed to change my `iOS Deployment Target`. My buddy was running her project on `iOS10.1` and I had not updated and was still on 10.0.

Once I changed my target and performed a good clean, all my simulators returned!

![alt text](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2017-01-06-assets/img1.png "iOS Deployment Target")

![alt text](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2017-01-06-assets/img2.png "List of targets!")
