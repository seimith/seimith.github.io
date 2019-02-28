---
layout: post
title:  (Swift) Make UILabel Conform to Length of Text
date:   2016-12-13 8:22:15 -0700
categories: ["swift", "uilabel", "snippet"]
tags: code
---

![alt text](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2016-12-23-assets/img2.png "Simulator of UILabel conforming to width of text")

Here's a snippet of how you can make your UILabel conform to the width of your text.

You want to use `.sizeToFit()` on your UILabel, otherwise you'd have to hardcode  your label's width in the `CGRect`.

```
import UIKit

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()

		let myCoolUILabel = UILabel()
		myCoolUILabel.text = "My Cool Label"
		myCoolUILabel.backgroundColor = UIColor.orange
 		myCoolUILabel.frame = CGRect(x: 100, y: 100, width: 30, height: 30)
		myCoolUILabel.sizeToFit()
		self.view.addSubview(myCoolUILabel)
	}
}
```
So, no more of this:

![alt text](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2016-12-23-assets/img1.png "Simulator of UILabel not conforming to width of text")
