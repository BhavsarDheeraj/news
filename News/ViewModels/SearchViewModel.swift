//
//  SearchViewModel.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    private let service = ArticlesService()
    
    @Published private (set) var articles = [Article]()
    
    @Published var searchText = ""
    
    func search() {
        guard !searchText.isEmpty else {
            articles.removeAll()
            return
        }
        service.getArticles(for: searchText) { articles in
            DispatchQueue.main.async {
                self.articles = articles ?? []
            }
        }
    }
    
}
