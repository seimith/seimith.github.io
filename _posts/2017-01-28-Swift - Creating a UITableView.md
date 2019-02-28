---
layout: post
title:  (Swift) Creating a UITableView
date:   2017-01-28 3:33:33 -0700
categories: ["swift", "UITableView", "snippet"]
tags: code
---

Here's a snippet on how to make a `UITableView`. Check out the code below!

**Tools:**

- Swift 3.0
- Xcode Version 8.0

```
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var myCoolTableView = UITableView()
    var myCoolIdentifier = "myCoolCell"
    let items : [String] = [
        "Item Uno",
        "Item Deux",
        "Item Three",
        "Item Four",
        "Item Cinco"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Get main screen bounds
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height

        myCoolTableView.dataSource = self
        myCoolTableView.delegate = self
        myCoolTableView.register(UITableViewCell.self, forCellReuseIdentifier: myCoolIdentifier)

        myCoolTableView.frame = CGRect(x: 0, y: 25, width: screenWidth, height: screenHeight);
        self.view.addSubview(myCoolTableView)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ cellForRowAttableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myCoolTableView.dequeueReusableCell(withIdentifier: myCoolIdentifier, for: indexPath)
        cell.textLabel?.text = self.items[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("========== Selected:", (items[indexPath.row]), "@", indexPath.row)
    }
}
```
