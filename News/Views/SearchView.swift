//
//  SearchView.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @EnvironmentObject var searchVM: SearchViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search articles", text: $searchVM.searchText) {
                    self.searchVM.search()
                }.textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
                List(searchVM.articles) { article in
                    ArticleCell(article: article)
                }
            }.navigationBarTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
