//
//  ArticleView.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct ArticleView: View {
    
    let article: Article
    
    var body: some View {
        VStack (spacing: 12) {
            WebImage(url: URL(string: article.urlToImage!))
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .cornerRadius(8)
            
            VStack (alignment: .leading, spacing: 8) {
                Text(article.title ?? "").font(.headline)
                Text(article.author ?? "").font(.subheadline)
                Text(article.description ?? "").lineLimit(nil)
            }
            Spacer()
            
            Text("Read full article").frame(maxWidth: .infinity, minHeight: 44)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(8)
                .onTapGesture {
                    guard let urlStr = self.article.url, let url = URL(string: urlStr) else { return }
                    UIApplication.shared.open(url)
                }
        }.padding()
            .navigationBarTitle("", displayMode: .inline)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article.test())
    }
}
