//
//  Country.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

struct Country: Identifiable {
    let id = UUID()
    let code: String
    let name: String
    let flag: String
}

extension Country {
    
    static func all() -> [Country] {
        return [
            Country(code: "ae", name: "United Arab Emirates", flag: "🇦🇪"),
            Country(code: "ar", name: "Argentina", flag: "🇦🇷"),
            Country(code: "au", name: "Australia", flag: "🇦🇺"),
            Country(code: "be", name: "Belgium", flag: "🇧🇪"),
            Country(code: "br", name: "Brazil", flag: "🇧🇷"),
            Country(code: "ca", name: "Canada", flag: "🇨🇦"),
            Country(code: "cn", name: "China", flag: "🇨🇳"),
            Country(code: "de", name: "Germany", flag: "🇩🇪"),
            Country(code: "fr", name: "France", flag: "🇫🇷"),
            Country(code: "gb", name: "United Kingdom", flag: "🇬🇧"),
            Country(code: "hk", name: "Hong Kong", flag: "🇭🇰"),
            Country(code: "in", name: "India", flag: "🇮🇳"),
            Country(code: "it", name: "Italy", flag: "🇮🇹"),
            Country(code: "jp", name: "Japan", flag: "🇯🇵"),
            Country(code: "kr", name: "South Korea", flag: "🇰🇷"),
            Country(code: "mx", name: "Mexico", flag: "🇲🇽"),
            Country(code: "my", name: "Malaysia", flag: "🇲🇾"),
            Country(code: "nz", name: "New Zealand", flag: "🇳🇿"),
            Country(code: "pt", name: "Portugal", flag: "🇵🇹"),
            Country(code: "ru", name: "Russian Federation", flag: "🇷🇺"),
            Country(code: "sg", name: "Singapore", flag: "🇸🇬"),
            Country(code: "tr", name: "Turkey", flag: "🇹🇷"),
            Country(code: "us", name: "United States", flag: "🇺🇸"),
            Country(code: "za", name: "South Africa", flag: "🇿🇦"),
            ].sorted(by: { $0.name < $1.name })
    }
    
}
