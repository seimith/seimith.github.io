---
layout: post
title:  Check for color with Regex
date:   2018-04-28 3:33:33 -0700
categories: regex colors hex rgb rgba hsl hsla snippet
tags: code
---

Hey, are you in need of checking if a string is `hex, rgb, rgba, hsl, and hsla`? Look no further.

```
(^[a-zA-Z]+$)|(#(?:[0-9a-f]{2}){2,4}|#[0-9a-f]{3}|(?:rgba?|hsla?)\((?:\d+%?(?:deg|rad|grad|turn)?(?:,|\s)+){2,3}[\s\/]*[\d\.]+%?\))
```

```
/(
      #(?:[0-9a-f]{2}){2,4}               Match #ARGB, #RRGGBB, or #AARRGGBB
   |                                   or
      #[0-9a-f]{3}                        Match #RGB
   |                                   or
      (^[a-zA-Z]+$)                       Match any string (red, green, blue)
   |                                   or
      (?:rgba?|hsla?)                     Match hsl, rgb, hsla, or rgba
      \(                                  Match (
         (
            ?:\d+%?(?:deg|rad|grad|turn)?    Match 0, 0%, 00%, 0deg, 0rad, etc.
            (?:,|\s)+                        Match a comma and/or space to separate them
         ){2,3}                           Repeat 2 or 3 times
         [\s\/]*[\d\.]+%?                 Match the last value, period and slash allowed
      \)                                  Match )
)/
```
[Regexr Example][regex]

[regex]: https://regexr.com/3omin
