//
//  ContentView.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = GuessViewModelImpl(
    service: GuessServiceImpl()
    )
    
    var body: some View {

        WindowGroup {
                
                TabView {
                    
                    NavigationView {
                        
                        GuessScreen(vm: vm)
                        
                    }
                    .tabItem {
                        // Image(systemName: "sun.haze.fill")
                        Text("Find Age")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: GuessViewModelImpl)
    }
}
