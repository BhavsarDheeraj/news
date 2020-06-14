//
//  HomeView.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            HeadlinesView().environmentObject(HeadlinesViewModel()).tabItem {
                Image(systemName: "list.bullet")
                Text("Headlines")
            }.tag(0)
            
            SearchView().environmentObject(SearchViewModel()).tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }.tag(1)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
