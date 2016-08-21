---
layout: post
title:  (Swift) Create Navigation with Multiple Pages with only Storyboard
date:   2016-08-20 8:22:15 -0700
categories: ["swift", "navigation", "views", "tutorial"]
---

After one week of playing around with Swift I have some opinions on using the storyboard. It’s weird. But, it definitely makes creating an app real easy. For example, if I want to make an application that has multiple pages, I can do that all via the storyboard. Styling the pages on storyboard, is another beast, and we won’t get into that right now.

In this post, I’ll go through steps to create an app that has 3 views/pages/scenes/whatever-you-call-it. You can navigate between each page via buttons on the actual views/pages/scenes and buttons on the navigation bar. 

**Tools:**   

- Swift 3   
- Xcode Version 7.3.1

**Step 1: Create swift project**
The first step to create your app is to actually create it! Make sure you select “Single View Application”, name your project, and deselect “Use Core Data”, “Include Unit Tests”, and “Include UI Tests” as we are not testing at all here.

	```
	iOS > Application > Single View Application
	```

Inline-style: 

![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.pn://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Creating a single application page")

