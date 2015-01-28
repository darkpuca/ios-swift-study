//
//  TableItemModel.swift
//  ios-swift-study
//
//  Created by darkpuca on 2015. 1. 28..
//  Copyright (c) 2015년 darkpuca. All rights reserved.
//

import Foundation

class TableItemModel: NSObject {
    var name: String = ""
    let date: NSDate
    
    init(name: String) {
        self.name = name
        date = NSDate()
    }
    
    func createdDate() -> String {
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.ShortStyle
        formatter.timeStyle = NSDateFormatterStyle.ShortStyle
        return formatter.stringFromDate(date)
    }
    
}