//
//  NSArrayReplaceValue.swift
//  ReplaceValuesDemo
//
//  Created by Ashish Parab on 03/05/15.
//  Copyright (c) 2015 Ashish Parab. All rights reserved.
//

import Foundation

extension NSArray {
    
    func arrayByReplacingValueWithStringFromDict(replacementDict : NSDictionary) -> NSArray {
        
        var replaced = NSMutableArray(array: self)
        
        for object in self {
            
            if (object.isKindOfClass(NSDictionary)) {
                
                replaced.replaceObjectAtIndex(self.indexOfObject(object), withObject: (object as! NSDictionary).dictionaryByReplacingValueWithStringFromDict(replacementDict))
            
            } else if (object.isKindOfClass(NSArray)) {
                
                replaced.replaceObjectAtIndex(self.indexOfObject(object), withObject: (object as! NSArray).arrayByReplacingValueWithStringFromDict(replacementDict))
            }
        }
        
        var returnArray = NSArray(array: replaced)
        
        return returnArray
    }
}