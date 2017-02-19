---
layout: post
title:  (Swift) Stop Using the Storyboard
date:   2017-02-19 3:33:33 -0700
categories: ["swift", "storyboard", "snippet"]
---

I started learning `Swift` about three months ago and when I started I used the `storyboard`. This post will be a snippet of how you can stop using the `storyboard`!

The major benefit of not using the `storyboard` is not having messy merge conflicts. Long story short, the `storyboard` file is a fairly large `xml` file and every time you open it something changes. Every time, you change a controller, or every time you add an `IBOutlet` or `IBAction` something changes.

**Tools:**

- Swift 3.0
- Xcode Version 8.0


Within your `AppDelegate.swift`, specify the `window` frame.

```
var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
```

Then, in your `application` function you can specify your main view controller to be something else.

In this example below, I've created some other view controller, called `NewViewController`,

```
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
  let startingViewController = NewViewController()
  self.window!.rootViewController = startingViewController
  window!.makeKeyAndVisible()
  return true
}
```

At this point, you can delete your `Storyboard.main` file. However, when you build and run your project at this point, you might get an error like this:

```
*** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: 'Could not find a storyboard named 'Main' in bundle NSBundle.
```

If this happens, navigate to your `info.plist` and delete the following entry:

```
Main storyboard file base name | String | Main
```

Hard clean and rebuild and you should see your new view controller.
