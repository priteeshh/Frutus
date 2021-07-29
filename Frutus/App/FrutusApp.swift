//
//  FrutusApp.swift
//  Frutus
//
//  Created by Preeteesh Remalli on 12/06/21.
//

import SwiftUI
//
@main
struct FrutusApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnbordingView()
            }else{
                ContentView()
            }
        }
    }
}
