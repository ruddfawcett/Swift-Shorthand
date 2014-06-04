//
//  NSString+DataConversion.swift
//  Swift-Shorthand
//
//  Created by Rudd Fawcett on 6/3/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import Foundation

extension String {
    
    func dataRepresentation () -> NSData {
        return self.dataUsingEncoding(NSUTF8StringEncoding)
    }
    
}

extension NSString {
    
    func dataRepresentation () -> NSData {
        return self.dataUsingEncoding(NSUTF8StringEncoding)
    }
    
}

extension NSData {
    
    func stringRepresentation () -> String {
        return NSString(data: self, encoding: NSUTF8StringEncoding) as String
    }
    
}