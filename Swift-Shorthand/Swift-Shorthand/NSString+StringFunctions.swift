//
//  NSString+StringFunctions.swift
//  Swift-Shorthand
//
//  Created by Rudd Fawcett on 6/3/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import Foundation

extension NSString {
    
    func contains (testString: String) -> Bool {
        if self.rangeOfString(testString).location == -1 {
            return Bool.false
        }
        else {
            return Bool.true
        }
    }
    
}

extension NSString {
    
    func isEqualToStringIgnoringCase (otherString: String) -> Bool {
        return self.caseInsensitiveCompare(otherString) == NSComparisonResult.OrderedSame
    }
    
    func stringByRemovingOccurrencesOfString (removeString: String) -> String {
        return self.stringByReplacingOccurrencesOfString(removeString, withString: "") as String
    }
    
}

extension String {
    
    func isEqualToStringIgnoringCase (otherString: String) -> Bool {
        return self.caseInsensitiveCompare(otherString) == NSComparisonResult.OrderedSame
    }
    
    func stringByRemovingOccurrencesOfString (removeString: String) -> String {
        return self.stringByReplacingOccurrencesOfString(removeString, withString: "") as String
    }
        
}