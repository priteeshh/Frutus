//
//  OnbordingView.swift
//  Frutus
//
//  Created by Preeteesh Remalli on 12/06/21.
//

import SwiftUI

struct OnbordingView: View {
    var fruits : [Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits){item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}
