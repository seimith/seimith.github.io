---
layout: post
title:  (Swift) Detect Typing
date:   2017-01-28 3:33:33 -0700
categories: ["swift", "keyboard", "handler", "snippet"]
tags: code
---

Here's a snippet on how to detect typing on your `Swift` app. It's pretty simple because we're utilizing the `UITextViewDelegate` delegate. Aka, built in success - thank you `Swift`!

**Tools:**

- Swift 3.0
- Xcode Version 8.0

This snippet is pretty short. See below for some code that will print out text when you type.

```
import UIKit

class ViewController: UIViewController, UITextViewDelegate {

  // 1. Creating a UITextView
  let myTextArea = UITextView(frame: CGRect(x: 30, y: 30, width: 200, height: 200))

  override func viewDidLoad() {
    super.viewDidLoad()

    // 2. You need this; setting delegate to self
    myTextArea.delegate = self

    // 3. Adding color and adding my UITextView to my controller's view
    myTextArea.backgroundColor = UIColor.gray
    self.view.addSubview(myTextArea)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // 4. Detection; printing out the text typed
  func textViewDidChange (_ textView: UITextView) {
    // Your code here.
    print("===== Text:", textView.text)
  }
}
```
