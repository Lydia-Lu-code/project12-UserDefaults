//
//  ViewController.swift
//  project12-UserDefaults
//
//  Created by Lydia Lu on 2024/3/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Paul Hudson", forKey: "Name")
        defaults.set(Data(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name": "Paul", "Country": "UK"]
        defaults.set(dict, forKey: "SavedDictionary")
            
        let sevedInteger = defaults.integer(forKey: "Age")
        let sevedBoolean = defaults.bool(forKey: "UserFaceID")
        
        let sevedArray = defaults.object(forKey: "SevedArray") as? [String] ?? [String]()
        let sevedDictionary = defaults.object(forKey: "SevsdDictionary") as? [String: String] ?? [String: String] ()
        
//        let sevedArray2 = defaults.array(forKey: sevedDictionary)
    }
}

