//
//  ContentView.swift
//  Frutus
//
//  Created by Preeteesh Remalli on 12/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSettingsShown : Bool = false
    var fruits : [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action: {
                    isSettingsShown = true
                }){
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isSettingsShown){
                    SettingsView()
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
