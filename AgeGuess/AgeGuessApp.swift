//
//  AgeGuessApp.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

@main
struct AgeGuessApp: App {
    
    @StateObject private var vm = GuessViewModelImpl(
        service: GuessServiceImpl()
    )

    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                NavigationView {
                    
                    GuessScreen(vm: vm)
                    
                }
                .tabItem {
                    // Image(systemName: "sun.haze.fill")
                    Text("Find My Age")
                }

                NavigationView {
                    
                    HistoryScreen(vm: vm)
                    
                }
                .tabItem {
                    // Image(systemName: "clock.fill")
                    Text("History")
                }

            }
        }
    }
}
