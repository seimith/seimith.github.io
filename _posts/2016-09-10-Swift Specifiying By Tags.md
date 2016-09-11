---
layout: post
title:  (Swift) Specifiying By Tags
date:   2016-09-10 8:22:15 -0700
categories: jekyll update
---

In Swift, you can add items to your storyboard and refer to it in your code. For example, you can add a UIButton and then create an IBOutlet in your code to "connect" to it.

Another way to do this is by giving it a tag number. Although this way might not be the best way to "grab" and assign things because I feel like it's very thinking to assigning an ID to a tag in web development.

To give your item a tag,

```
> Click on your item
> Select "Attributes Inspector" in your "Utilities"panel (this is the wedge-looking icon)
> Scroll down to find the "View" section and find the "Tag" field
> Give it a unique number
```

![alt text](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2016-09-11-assets/img1.png "Giving a UIView a tag")

Once you assign something with a tag you can then look it up by that tag and then augment it.

Here is an example:

```
if let theLabel = self.view.viewWithTag(1) as? UILabel {
	theLabel.text = "I'm replacing text here"
	}
```
