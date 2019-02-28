---
layout: post
title:  (Swift) Add Target for Click Handle
date:   2016-12-26 8:22:15 -0700
categories: ["swift", "addTarget", "click handle", "snippet"]
tags: code
---

This entry will show how you'd add a click handler to a `UIButton`. It's very easy.

![alt text](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2016-12-24-assets/SwiftAddTargetMedium.gif "Clicking on a UIButton")

The first thing you want to do it make a button.

```
let myCoolButton = UIButton()
myCoolButton.setTitle("Hey Click Me if You Dare", for: .normal)
myCoolButton.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
myCoolButton.backgroundColor = UIColor.orange
self.view.addSubview(myCoolButton)
```

In this scenario, I'm just slapping it in my `viewDidLoad` function. You can also see that I've set the title and set it for the `.normal` state. Then, I specified the frame's `CGRect` and `backgroundColor`. And finally, I added the button to the `self.view` as a `subView`.

After this, add the target.

```
myCoolButton.addTarget(self, action: #selector(self.handleOnClickOfMyCoolButton), for: .touchUpInside)
```

The `target` is `self`, the `action` is the method that you want to get called, and the `for` is a `UIControlEvent`.

Somewhere in your file, add the function `handleOnClickOfMyCoolButton`.

```
func handleOnClickOfMyCoolButton () {
	print("Hey, I was clicked!")
}
```

**You can get the storyboard project is in [this repo][link].**

[link]: https://github.com/seimith/SwiftAddTarget
