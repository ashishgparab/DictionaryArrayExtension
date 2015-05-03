//
//  NSDictionaryReplaceValue.swift
//  ReplaceValuesDemo
//
//  Created by Ashish Parab on 03/05/15.
//  Copyright (c) 2015 Ashish Parab. All rights reserved.
//

import Foundation

extension NSDictionary {
    
    func dictionaryByReplacingValueWithStringFromDict(replecementDict : NSDictionary) -> NSDictionary {
        
        var replaced = NSMutableDictionary(dictionary: self)
        
        for key in self.allKeys {
            
            let object : AnyObject = self.objectForKey(key) as AnyObject!
            
            if ((replecementDict.allKeys as NSArray).containsObject(key)) {
                
                replaced.setObject(replecementDict.objectForKey(key)!, forKey: key as! NSString)
            
            } else if (object.isKindOfClass(NSDictionary)) {
                
                replaced.setObject((object as! NSDictionary).dictionaryByReplacingValueWithStringFromDict(replecementDict), forKey: key as! NSString)
            
            } else if (object.isKindOfClass(NSArray)) {
                
                replaced.setObject((object as! NSArray).arrayByReplacingValueWithStringFromDict(replecementDict), forKey: key as! NSString)
            }
        }
        
        var returnDict = NSDictionary(dictionary: replaced)
        
        return returnDict
    }
}