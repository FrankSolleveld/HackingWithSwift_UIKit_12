//
//  ViewController.swift
//  Project12
//
//  Created by Frank Solleveld on 14/03/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "ArrayTest")
        let dict = ["Name": "Frank", "Country": "NL"]
        defaults.set(dict, forKey: "SavedDict")
        let savedInteger = defaults.integer(forKey: "Age")
        let savedBoolean = defaults.bool(forKey: "UseFaceID")
        let savedArray = defaults.object(forKey: "ArrayTest") as? [String] ?? [String]()
        let savedDict = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()
    }


}

