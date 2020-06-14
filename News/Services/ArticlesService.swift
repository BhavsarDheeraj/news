//
//  ArticlesService.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

class ArticlesService {
    
    private let apiKey = "27238040ee3648a0b0a343e009b1b55a"
    
    func getHeadlines(for country: Country, completion: @escaping ([Article]?) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=\(country.code)&apiKey=\(apiKey)") else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            do {
                let headlinesReponse = try JSONDecoder().decode(ArticlesResponse.self, from: data)
                completion(headlinesReponse.articles ?? [])
            } catch {
                completion(nil)
            }
        }).resume()
    }
    
    func getArticles(for query: String, completion: @escaping ([Article]?) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=\(query)&apiKey=\(apiKey)") else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            do {
                let headlinesReponse = try JSONDecoder().decode(ArticlesResponse.self, from: data)
                completion(headlinesReponse.articles ?? [])
            } catch {
                completion(nil)
            }
        }).resume()
    }
    
}
