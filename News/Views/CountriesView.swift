//
//  CountriesView.swift
//  News
//
//  Created by Dheeraj on 13/06/20.
//  Copyright © 2020 Dheeraj Bhavsar. All rights reserved.
//

import SwiftUI

struct CountriesView: View {
    
    @ObservedObject var headlinesVM: HeadlinesViewModel
    @Binding var showing: Bool
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Countries").font(.title).padding()
            List(Country.all()) { country in
                HStack {
                    Text(country.flag)
                    Text(country.name).font(.headline)
                    Spacer()
                    if self.headlinesVM.selectedCountry.name == country.name {
                        Text("selected").font(.subheadline).padding(.vertical, 2).padding(.horizontal, 4).foregroundColor(.white).background(Color.green).cornerRadius(10)
                    }
                }
                .onTapGesture {
                    self.headlinesVM.selectedCountry = country
                    self.showing = false
                }
            }
        }
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView(headlinesVM: HeadlinesViewModel(), showing: .constant(true))
    }
}
