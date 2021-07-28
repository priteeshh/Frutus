//
//  FruitHeaderView.swift
//  Frutus
//
//  Created by Preeteesh Remalli on 13/06/21.
//

import SwiftUI
struct FruitHeaderView: View {
    var fruit: Fruit
    @State var isAnimating : Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 6)
                .padding(20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 400, alignment: .center)
        .onAppear(){
            DispatchQueue.main.async {
                withAnimation(.easeOut(duration: 1.5)) {
                    isAnimating = true
                }
            }
        }
        .onDisappear(){
            isAnimating = false
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 340, height: 400))
    }
}
