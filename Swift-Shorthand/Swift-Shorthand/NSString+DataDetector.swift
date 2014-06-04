//
//  NSString+DataDetector.swift
//  Swift-Shorthand
//
//  Created by Rudd Fawcett on 6/3/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import Foundation

// Apparently now in Swift, NSDataDetector.dataDetectorWithTypes(NSTextCheckingType.X, error: nil) is not acceptable.
// You must use NSTextCheckingTypes, which doesn't do what we want.  This may/not be a bug.
// So, don't use any of these functions yet.

// Also, there is no isEqualToString() on String, just NSString, hence the vars below.

extension NSString {
    
    func isEmail () -> Bool {
        // Should be:                                           NSTextCheckingType.Email
        var dataDetector = NSDataDetector.dataDetectorWithTypes(NSTextCheckingTypes(), error: nil)
        var firstMatch = dataDetector.firstMatchInString(self, options: nil, range: NSMakeRange(0, self.length))
        var scheme = firstMatch.URL.scheme as NSString
        
        return firstMatch.range.location == 0 && firstMatch.range.length == self.length && scheme.isEqualToString("mailto")
    }
    
    func isURL () -> Bool {
        // Should be:                                           NSTextCheckingType.URL
        var dataDetector = NSDataDetector.dataDetectorWithTypes(NSTextCheckingTypes(), error: nil)
        var firstMatch = dataDetector.firstMatchInString(self, options: nil, range: NSMakeRange(0, self.length))
        var scheme = firstMatch.URL.scheme as NSString
        
        return firstMatch.range.location == 0 && firstMatch.range.length == self.length && !scheme.isEqualToString("mailto");
    }
    
    func isPhoneNumber () -> Bool {
        // Should be:                                           NSTextCheckingType.PhoneNumber
        var dataDetector = NSDataDetector.dataDetectorWithTypes(NSTextCheckingTypes(), error: nil)
        var firstMatch = dataDetector.firstMatchInString(self, options: nil, range: NSMakeRange(0, self.length))
        
        return firstMatch.range.location == 0 && firstMatch.range.length == self.length
    }
    
    func isDate () -> Bool {
        // Should be:                                           NSTextCheckingType.Date
        var dataDetector = NSDataDetector.dataDetectorWithTypes(NSTextCheckingTypes(), error: nil)
        var firstMatch = dataDetector.firstMatchInString(self, options: nil, range: NSMakeRange(0, self.length))
        
        return firstMatch.range.location == 0 && firstMatch.range.length == self.length
    }
    
    func isAddress () -> Bool {
        // Should be:                                           NSTextCheckingType.Address
        var dataDetector = NSDataDetector.dataDetectorWithTypes(NSTextCheckingTypes(), error: nil)
        var firstMatch = dataDetector.firstMatchInString(self, options: nil, range: NSMakeRange(0, self.length))
        
        return firstMatch.range.location == 0 && firstMatch.range.length == self.length
    }
}
