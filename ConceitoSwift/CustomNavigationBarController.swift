//
//  CustomNavigationBarController.swift
//  ConceitoSwift
//
//  Created by Roberto Junior on 12/09/14.
//  Copyright (c) 2014 Roberto. All rights reserved.
//

import UIKit

class CustomNavigationBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var dict = Dictionary<NSObject, AnyObject>()
        dict.updateValue(UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        dict.updateValue(UIFont(name: "Noteworthy", size: 20), forKey: NSFontAttributeName)
        self.navigationBar.titleTextAttributes = dict
        self.navigationBar.barTintColor = Utils.colorFromRGB(0x4387FD)

    }
}
