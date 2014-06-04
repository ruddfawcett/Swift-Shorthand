//
//  NSObject+JSON.swift
//  Swift-Shorthand
//
//  Created by Rudd Fawcett on 6/3/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import Foundation

extension NSString {
    
    func objectFromJSONString () -> AnyObject {
        var data = self.dataUsingEncoding(NSUTF8StringEncoding)
        
        return NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil)
    }
    
}

extension String {

    func objectFromJSONString () -> AnyObject {
        var data = self.dataUsingEncoding(NSUTF8StringEncoding)
        
        return NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil)
    }

}

extension NSArray {
    
    func JSONString () -> String {
        var jsonData = NSJSONSerialization.dataWithJSONObject(self, options: nil, error: nil)
        
        return NSString(data: jsonData, encoding: NSUTF8StringEncoding)
    }
    
}

extension Array {

    func JSONString () -> String {
        var jsonData = NSJSONSerialization.dataWithJSONObject(self, options: nil, error: nil)
        
        return NSString(data: jsonData, encoding: NSUTF8StringEncoding) as String
    }

}

extension NSDictionary {
    
    func JSONString () -> String {
        var jsonData = NSJSONSerialization.dataWithJSONObject(self, options: nil, error: nil)
        
        return NSString(data: jsonData, encoding: NSUTF8StringEncoding)
    }
    
}

extension Dictionary {

    func JSONString () -> String {
        var jsonData = NSJSONSerialization.dataWithJSONObject(self, options: nil, error: nil)
        
        return NSString(data: jsonData, encoding: NSUTF8StringEncoding) as String
    }

}
