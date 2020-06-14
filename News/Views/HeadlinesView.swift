//
//  HeadlinesView.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import SwiftUI

struct HeadlinesView: View {
    
    @EnvironmentObject var headlinesVM: HeadlinesViewModel
    
    @State var showingCountries = false
    
    var body: some View {
        NavigationView {
            List(headlinesVM.articles) { article in
                ArticleCell(article: article)
            }
            .navigationBarTitle("Headlines")
            .navigationBarItems(trailing: Button(action: { self.showingCountries.toggle() }) { Text(headlinesVM.selectedCountry.flag).font(.title) })
        }
        .sheet(isPresented: $showingCountries, onDismiss: headlinesVM.getHeadlines) { CountriesView(headlinesVM: self.headlinesVM, showing: self.$showingCountries) }
        .onAppear(perform: headlinesVM.getHeadlines)
    }
}

struct HeadlinesView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlinesView()
    }
}
