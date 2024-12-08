//
//  ContentView.swift
//  Lab13_Sandwich
//
//  Created by Benjamin Dudra on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    var sandwiches : [Sandwich] = []
    
    var body: some View {
        NavigationView {
            List(sandwiches) { sandwich in
                NavigationLink(destination:Text(sandwich.name)){
                    Image(sandwich.thumbnailName)
                        .cornerRadius(8)
                    
                    VStack (alignment: .leading){
                        Text(sandwich.name)
                        Text("\(sandwich.ingredientCount) Ingredients")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                    }
                }
            }
            .navigationTitle("Sandwichwes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}
