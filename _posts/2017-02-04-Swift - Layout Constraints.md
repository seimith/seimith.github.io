---
layout: post
title:  (Swift) Layout Constraints
date:   2017-02--4 3:33:33 -0700
categories: ["swift", "constraints"]
---

A whiles back ago I was trying to learn how `constraints` work. Today, I still have no idea what the heck is going on.

While learning, I can across a bunch of tutorials that helped. However, I don't remember what blog I particularly liked.

This post contains a couple of classes that I made to help me add constraints to `UIViews`.

**Tools:**

- Swift 3.0
- Xcode Version 8.0

Below is a class named `Layout` with a static function `setupConstraint` that accepts the following parameters:

- forView: UIView `// What UIView do you want to add constraints to?`
- top: Int? = nil `// Top padding`
- bottom: Int? = nil `// Bottom padding; Negative integer`
- left: Int? = nil `// Left padding`
- right: Int? = nil `// Right padding; Negative integer`
- height: Int? = nil `Specified height`
- fixedHeight: Bool = false `// Boolean defaulted to false; If you want a fixed UIView, give it a height (above)`
- width: Int? = nil `// Specified width `
- fixedWidth: Bool = false `// Boolean defaulted to false; If you want a fixed UIView, give it a width (above)`
- selfView: UIViewController `// What is the UIViewController's view?`

```
import UIKit

class Layout {
  static func setupConstraint (forView: UIView, top: Int?=nil, bottom: Int?=nil, left: Int?=nil, right: Int?=nil, height: Int?=nil, fixedHeight: Bool = false, width: Int?=nil, fixedWidth: Bool = false, selfView: UIViewController) {

    var parentViewController: UIView? {
        return selfView.view
    }

    forView.translatesAutoresizingMaskIntoConstraints = false //USING AUTOLAYOUT NOT FRAMES

    var l = NSLayoutConstraint() // LEFT
    var r = NSLayoutConstraint() // RIGHT
    var t = NSLayoutConstraint() // TOP
    var b = NSLayoutConstraint() // BOTTOM

    if (left != nil) {
        l = forView.leadingAnchor.constraint(equalTo: (parentViewController?.leadingAnchor)!, constant: CGFloat(left!)) // LEFT
    }

    if (right != nil) {
        r = forView.trailingAnchor.constraint(equalTo: (parentViewController?.trailingAnchor)!, constant: CGFloat(right!)) // RIGHT
    }

    if (top != nil) {
        t = forView.topAnchor.constraint(equalTo: (parentViewController?.topAnchor)!, constant: CGFloat(top!)) // TOP
    }

    if (bottom != nil) {
        b = forView.bottomAnchor.constraint(equalTo: (parentViewController?.bottomAnchor)!, constant: CGFloat(bottom!)) // BOTTOM
    }

    if (fixedHeight) {
        // FIXED HEIGHT
        let h = forView.heightAnchor.constraint(equalToConstant: CGFloat(height!))
        parentViewController?.addConstraints([t, b, l, r, h])
    } else if (fixedWidth) {
        // FIXED WIDTH
        let w = forView.widthAnchor.constraint(equalToConstant: CGFloat(width!))
        parentViewController?.addConstraints([t, b, l, r, w])
    } else if (fixedHeight == false && fixedWidth == false) {
        // VARIABLE HEIGHT & WIDTH
        parentViewController?.addConstraints([t, b, l, r])
    }
  }
}
```
