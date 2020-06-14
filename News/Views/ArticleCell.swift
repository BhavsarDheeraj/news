//
//  ArticleCell.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import SwiftUI

struct ArticleCell: View {
    
    let article: Article
    
    var body: some View {
        NavigationLink(destination: ArticleView(article: article)) {
            VStack (alignment: .leading, spacing: 8) {
                Text(article.title!).font(.headline).lineLimit(2)
                HStack {
                    Text(article.source!.name!).font(.subheadline)
                    Spacer()
                    Text(Date.from(iso: article.publishedAt!).readable()).font(.subheadline)
                }
            }
            .padding(.vertical)
        }
    }
}

struct ArticleCell_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCell(article: Article.test())
    }
}
