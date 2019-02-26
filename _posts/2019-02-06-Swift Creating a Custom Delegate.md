---
layout: post
title:  (Swift) Creating a Custom Delegate
date:   2019-02-06 3:33:33 -0700
categories: swift uiview UIViewController mobile
tags: code
---

Exposing a function from **UIViewController A** to a **CUSTOM UIVIEW** such that you can call it.

**CUSTOM UIVIEW**

```swift
import UIKit
import DesignSystem

protocol CustomViewDelegate: class {
    // make this class protocol so you can create `weak` reference
    func triggerSegueToGallery()
}

class AttachmentBar: UIView {
     weak var delegate: CustomViewDelegate?   // make this `weak` to avoid strong reference cycle b/w view controller and its views
     func triggerSegueToGallery() {
        delegate?.triggerSegueToGallery()
    }

     func someOtherFunc () {
       item.addTarget(self, action: #selector(triggerSegueToGallery), for: .touchUpInside)
     }
}
```

**UIViewController A**

```swift
import UIKit
import DesignSystem

class PublisherViewController: UIViewController, CustomViewDelegate {
    func triggerSegueToGallery() {
        self.performSegue(withIdentifier: "arbitraryIDForCollectionView", sender: self)
    }
}
```
