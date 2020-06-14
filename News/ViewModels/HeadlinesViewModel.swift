//
//  HeadlinesViewModel.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

class HeadlinesViewModel: ObservableObject {
    
    private let service = ArticlesService()
    
    @Published private (set) var articles = [Article]()
    
    @Published var selectedCountry = Country.all().filter { $0.code == "in" }.first!
    
    func getHeadlines() {
        service.getHeadlines(for: selectedCountry) { articles in
            DispatchQueue.main.async {
                self.articles = articles ?? []
            }
        }
    }
    
}
