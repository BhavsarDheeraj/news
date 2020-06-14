//
//  DateExtensions.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

extension Date {
    static func from(iso: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return dateFormatter.date(from: iso)!
    }
    
    func readable() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd,yyyy"
        return dateFormatter.string(from: self)
    }
}
