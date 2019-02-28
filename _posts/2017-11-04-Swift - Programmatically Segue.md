---
layout: post
title:  (Swift) Programmatically Segue
date:   2017-11-04 11:15:00 -0700
categories: swift segue snippet
tags: code
---

Using the code from my previous post on segues, here's a snippet:

```
func segueToPublisher () {
  let customSegueGoToRightScene = CustomSegueGoToRightScene(identifier: "CustomSegueGoToRightScene", source: self, destination: PublisherViewController())
  customSegueGoToRightScene.perform()
}
```
