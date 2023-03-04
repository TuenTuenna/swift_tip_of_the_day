//
//  ViewController.swift
//  OpenClassTutorial
//
//  Created by Jeff Jeong on 2023/03/04.
//

import UIKit
import NewFeature


class MyUtils : Utils {
    override class func sayHello() {
        super.sayHello()
        print(#fileID, #function, #line, "- 하하하")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        Utils.sayHello()
        MyUtils.sayHello()
    }


}

