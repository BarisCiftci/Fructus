//
//  ContentView.swift
//  Fructus
//
//  Created by Baris Ciftci on 27/09/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruit: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List{
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit:  item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
