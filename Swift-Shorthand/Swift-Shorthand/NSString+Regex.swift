//
//  NSString+Regex.swift
//  Swift-Shorthand
//
//  Created by Rudd Fawcett on 6/3/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import Foundation

extension NSString {
    
    func matchesRegex (regex: String) -> Bool {
        return (self.matchesForRegex(regex).count > 0)
    }

    func rangeOfFirstSubstringMatching (regex: String) -> NSRange {
        var regularExpression = NSRegularExpression.regularExpressionWithPattern(regex, options: nil, error: nil)
        return regularExpression.rangeOfFirstMatchInString(self, options: nil, range: NSMakeRange(0, self.length))
    }
    
    func matchesForRegex (regex: String) -> NSArray {
        var regularExpression = NSRegularExpression(pattern: regex, options: nil, error: nil)
        return regularExpression.matchesInString(self, options: nil, range: NSMakeRange(0, self.length))
    }

}
