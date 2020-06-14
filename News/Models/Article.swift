//
//  Article.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

struct ArticlesResponse: Decodable {
    var status: String?
    var totalResults: Int?
    var articles: [Article]?
}

struct Article: Decodable, Identifiable {
    let id = UUID()
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
    var source: Source?
}

struct Source: Decodable {
    var id: String?
    var name: String?
}

extension Article {
    static func test() -> Article {
        return Article(author: "By Sameer Suri For Dailymail.com", title: "Matt James the new Bachelor goes boating in Florida with Tyler Cameron and female pal - Daily Mail", description: "He has been named the new Bachelor. And Matt James was seen palling around in Florida this Friday with another franchise star, Bachelorette hunk Tyler Cameron.", url: "https://www.dailymail.co.uk/tvshowbiz/article-8416685/Matt-James-new-Bachelor-goes-boating-Florida-Tyler-Cameron-female-pal.html", urlToImage: "https://i.dailymail.co.uk/1s/2020/06/13/08/29557508-0-image-a-52_1592032512778.jpg", publishedAt: "2020-06-13T07:48:34Z", content: "He has been named the new Bachelor.\r\nAnd Matt James was seen palling around in Florida this Friday with another franchise star and his close friend, Bachelorette hunk Tyler Cameron.\r\nMatt, 28, and Ty… [+5493 chars]", source: Source(id: nil, name: "Daily Mail"))
    }
}
