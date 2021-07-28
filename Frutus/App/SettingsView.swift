//
//  SettingsView.swift
//  Frutus
//
//  Created by Preeteesh Remalli on 14/06/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    GroupBox(
                        label: SettingsLabelView(labelText: "Frutus", labelImage: "info.circle"), content: {
                            Divider().padding(.vertical,2)
                            HStack(alignment: .center, spacing: 10, content: {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, printer took a galley of type and scrambled it to make a type specimen book.")
                            })
                    })
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
                .navigationBarItems(trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                    }
                )
        }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
