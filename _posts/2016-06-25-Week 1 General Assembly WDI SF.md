---
layout: post
title:  Week 1 General Assembly WDI SF
date:   2013-09-30 8:22:15 -0700
categories: jekyll update
---

I just completed my first week of General Assembly's Web Development Immersive program and I feel like I've been sitting with my classmates for months! Where to start?

**About General Assembly WDI**
General Assembly's Web Development Immersive ("WDI") program is a 3-month coding program. One learns Ruby, Ruby on Rails, Sinatra, JavaScript, HTML5, CSS3, JSON, and some more stuff that involves to many acronyms and numbers that I don't remember.

**Pre-Work**
Before starting the program I had to complete some pre-work on Ruby, Git, HTML, and CSS. The HTML and CSS were great to refresh because I haven't touched those things is years! Git was completely foreign to me, and Ruby was similar to JavaScript in terms of its functions/methods and classes.

**Week 1**
My first week was very interesting. After being out of college for a year and not doing anything remotely similar to coding/programming in years it was a very difficult transition for me to plummet into the program.

>> Terminal and GitHub: On the first day we went over some basic terminal and git commands. Learning how to navigate through the terminal was a bit scary for me. The laptop that I use isn't mine so I was thoroughly irked out with using the terminal to create and delete things. GitHub was also very alien to me. I have never used GitHub for anything in my entire life! The concept of having to work locally, then adding/commiting/pushing my local files to a repository ("reopo"), and the  requesting for a pull for my instructors to merge my files in my repo to theirs' was interesting to grasp at first. However, after using the terminal and GitHub for a good solid 3.75 days... I became completely comfortable with the terminal and I can sort of say that I GET GIT (I think)! On Friday (9/27) I was able to help my classmates with their Git problems! Am I a Git pro now? Just kidding.

An important command that really helped me out was the following. It looks for and `.DS_Store` files and git removes it. It comes in handy when you've accidentally add/commit/and pushed the `.DS_Store` file to your repo.

`find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch`

One of the silliest problems that I have with Git is the over creation of .ds files in my repo. Using the above removes all .ds files so I can properly add, commit, and push my new files.

>> Ruby: As I mentioned previously, I've never seen or used Ruby... ever. The only exposure that I had with the language was with the pre-work. When we reviewed some basics on the first day I was like: Yeah, my life is nice and randy dandy. However, when we began to work on methods/functions and it's scoping properties, I felt so silly. I realized that I don't know how to think like a coder. When I approach a project, I think backwards. I'm not quite sure if that's good, but I tend to get stuck on a solution because I tend to over think about how the outcome should be.

