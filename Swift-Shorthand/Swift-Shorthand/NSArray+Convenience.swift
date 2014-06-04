//
//  NSArray+Convenience.swift
//  Swift-Shorthand
//
//  Created by Rudd Fawcett on 6/3/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import Foundation

extension NSArray {
    
    func flattenedArray () -> NSArray {
        var array = NSMutableArray()
        
        for object : AnyObject in self {
            if object.isKindOfClass(NSArray) {
                array.addObjectsFromArray(object.flattenedArray())
            }
            else {
                array.addObject(object)
            }
        }
        
        return array
    }
    
    func uniquedArray () -> NSArray {
        return NSOrderedSet(array: self).array
    }

    
    func sortedArray () -> NSArray {
        return self.sortedArrayUsingSelector(Selector("compare"))
    }
    
    
    func reversedArray () -> NSArray {
        return self.reverseObjectEnumerator().allObjects
    }
    
}
