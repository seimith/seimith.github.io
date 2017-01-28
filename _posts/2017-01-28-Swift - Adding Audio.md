---
layout: post
title:  (Swift) Adding Audio
date:   2017-01-28 3:33:33 -0700
categories: ["swift", "audio", "snippet", "AudioToolbox"]
---

Utilize `AudioToolbox` and make a class, `Sound`, to pass in the filename of you audio file and it's type.

**Tools:**

- Swift 3.0
- Xcode Version 8.0

```
import AudioToolbox

class Sound {

    var soundEffect: SystemSoundID = 0
    init (name: String, type: String) {
        let path  = Bundle.main.path(forResource: name, ofType: type)!
        let pathURL = NSURL(fileURLWithPath: path)
        AudioServicesCreateSystemSoundID(pathURL as CFURL, &soundEffect)
    }

    func play() {
        AudioServicesPlaySystemSound(soundEffect)
    }
}
```

Then, call it like so:
```
Sound(name: "NameOfMyAudioFile", type: "wav").play()
```
