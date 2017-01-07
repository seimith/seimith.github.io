---
layout: post
title:  (Swift) Keyboard Visibility
date:   2017-01-07 8:22:15 -0700
categories: ["swift", "keyboard", "snippet"]
---

This post is about doing things when your keyboard is visible or not. You might want to have some animation when your keyboard comes into view, or you might want an alert to pop up. Whatever it may be, here's a snippet for that.

In the example below, I just have a `UITextView` and a `UIButton` set up so that you can see the keyboard appear and disappear.

![Keyboard toggling](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2017-01-07-assets/keyboardLarge.gif "Keyboard toggling")

**Tools:**

- Swift 3.0
- Xcode Version 8.0

**Step 1: Set up the UITextView**

```
let myCoolTextArea = UITextView()
myCoolTextArea.backgroundColor = UIColor.gray
myCoolTextArea.frame = CGRect(x: 0, y: 20, width: self.view.frame.width, height: 300)
myCoolTextArea.text = "This is a textarea! :)"
self.view.addSubview(myCoolTextArea)
```

**Step 2: Set up a UIButton to dismiss your keyboard**
In this step I `add a target` to a function named `dismissMyKeyboard` to hide my keyboard.

Check out my previous post on how to add a target [here][linkSwiftAddTarget].

```
let myButtonToDismissKeyboard = UIButton()
myButtonToDismissKeyboard.backgroundColor = UIColor.gray
myButtonToDismissKeyboard.frame = CGRect(x: 0, y: 350, width: self.view.frame.width, height: 30)
myButtonToDismissKeyboard.setTitle("Dimiss Button", for: .normal)
myButtonToDismissKeyboard.addTarget(self, action: #selector(dismissMyKeyboard), for: .touchUpInside)
self.view.addSubview(myButtonToDismissKeyboard)
```

**Step 3: Fuctions **

```
func keyboardWillAppear (_ notification: NSNotification) {
    print("=== keyboardWillAppear")
}

func keyboardWillDisappear (_ notification: NSNotification) {
    print("=== keyboardWillDisappear")
}

func dismissMyKeyboard () {
    self.view.endEditing(true)
}
```

**Step 4: Add Observers**
This is similar to adding targets. In order for my functions `` and `` to be observed and then get called, I need to add the following to my `viewDidLoad` function.

```
NotificationCenter.default.addObserver(self, selector:#selector(keyboardWillAppear), name: NSNotification.Name.UIKeyboardWillShow, object: nil)

NotificationCenter.default.addObserver(self, selector:#selector(keyboardWillDisappear), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
```

**You can get the storyboard project is in [this repo][link].**

[link]: https://github.com/seimith/SwiftKeyboardVisibility
[linkSwiftAddTarget]: http://seimith.github.io/swift/addtarget/click%20handle/snippet/2016/12/26/Swift-Add-Target-for-Click-Handle.html
