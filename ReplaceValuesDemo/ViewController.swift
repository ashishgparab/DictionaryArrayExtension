//
//  ViewController.swift
//  ReplaceValuesDemo
//
//  Created by Ashish Parab on 03/05/15.
//  Copyright (c) 2015 Ashish Parab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var dic1 = NSMutableDictionary()
        dic1.setObject("string 1", forKey: "key1.1")
        dic1.setObject("arya", forKey: "key1.2")
        
        var dic2 = NSMutableDictionary()
        
        var arr2 = NSMutableArray()
        
        var temp3 = NSMutableDictionary(objectsAndKeys: "abc", "key7.1", "xyz", "key7.2")
        var temp4 = NSMutableDictionary(objectsAndKeys: "abc", "key8.1", "xyz", "key8.2")
        
        arr2.addObject(temp3)
        arr2.addObject(temp4)
        
        dic2.setObject(arr2, forKey: "key2.1")
        dic2.setObject("arya", forKey: "key2.2")
        
        var dic3 = NSMutableDictionary()
        dic3.setObject("string 3", forKey: "key3.1")
        dic3.setObject("arya", forKey: "key3.2")
        
        dic2.setObject(dic3, forKey: "key2.3")
        
        dic1.setObject(dic2, forKey: "key1.3")
        
        var arr1 = NSMutableArray()
        
        var temp1 = NSMutableDictionary(objectsAndKeys: "abc", "key4.1", "xyz", "key4.2")
        var temp2 = NSMutableDictionary(objectsAndKeys: "abc", "key5.1", "xyz", "key5.2")
        
        arr1.addObject(temp1)
        arr1.addObject(temp2)
        
        dic1.setObject(arr1, forKey: "key6.1")
        
        println("Before Changes \(dic1)");
        
        var replcementDict : NSDictionary = NSDictionary(objectsAndKeys: "replacedValue4.1", "key4.1", "replacedValue2.2", "key2.2", "replacedValue8.2", "key8.2")
        
        var changedDict = dic1.dictionaryByReplacingValueWithStringFromDict(replcementDict) as NSDictionary
        
        println("After Changes \(changedDict)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

