---
layout: post
title:  (Swift) Sliding UIView
date:   2016-10-01 8:22:15 -0700
categories: ["swift", "uiview", "views", "tutorial", "animation"]
---

Today we're going to make a sliding UIView. Similar to the previous post, this tutorial is also very similar to my prievious post about [rotating UIViews](http://seimith.github.io/swift/uiview/views/tutorial/animation/2016/08/28/Swift-Rotating-UIView.html "Post on rotating UIViews"), but this is how to do a sliding animation. You might need this type of animation for opening a menu or showing an alert.

![alt text](https://raw.githubusercontent.com/seimith/seimith.github.io/master/_assets/2016-10-01-assets/slidingUIViewSm.gif "Sliding UIViews")

**Tools:**

- Swift 2.2
- Xcode Version 7.3.1

**Step 1 to 4: Create swift project, set up your storyboard, add constraints, and connect your outlets**
The steps to set up this project this is pretty much the same as the [rotating UIViews](http://seimith.github.io/swift/uiview/views/tutorial/animation/2016/08/28/Swift-Rotating-UIView.html "Post on rotating UIViews") post, so check it out first. After that, you can just augment **Step 5** to make your UIView slide.

**Side Note**: What's different from this and the previous tutorials are the constraints that I added to the UIView. However, it doesn't really matter... :)

**Step 5: Add code to slide**
In this example, we’re adding animation to slide a `UIView` once the app loads. To do that, we’ll create a function, then call that function within the `viewDidLoad` lifecycle function.

This is the function that contains the animation.

```
func beginAnimation () {
  // 1st transformation
  self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, -100)

  UIView.animateWithDuration(0.4, delay: 0, options: [.CurveEaseInOut], animations: {
      // 2nd transformation
      self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 50)
      }, completion: { completion in
          UIView.animateWithDuration(0.2, delay: 0.0, options: [.CurveEaseInOut], animations: {
              // 3rd transformation
              self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 0)
          }, completion: nil)
  })
}
```
In this example, I've got 3 transformations because the animation that I'm going for is a slide+little bump+short slide to position.

The first transformation is the starting position, and here, I've got it set above the visible viewport at `-100`.

`self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, -100)`

The second transformation brings the UIView into the view, and with the ".CurveEaseInOut" option will give this a snappiness at `50`.

`self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 50)`

And finally, the third transformation, I have it in the completion block, and this will bring the UIView up and make it look like it "bumps" into it's final position at `0`.

`self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 0)`

Add the code in your `viewDidLoad` to start the pulse

```
self.beginAnimation()
```

Your file should look similar to this:

```
import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var uiViewToSlide: UIView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.beginAnimation()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func beginAnimation() {
    self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, -100)

    UIView.animateWithDuration(0.4, delay: 0, options: [.CurveEaseInOut], animations: {
      self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 50)
      }, completion: { completion in
        UIView.animateWithDuration(0.2, delay: 0.0, options: [.CurveEaseInOut], animations: {
          self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 0)
        }, completion: nil)
    })

  }
}
```

And that should be it. When you reload your simulator you should see a pulsating pink square!

**You can get the storyboard project is in [this repo][link].**

[link]: https://github.com/seimith/SwiftSlidingUIView
