//
//  HistoryScreen.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-14.
//

import SwiftUI

struct HistoryScreen: View {

    @ObservedObject var vm: GuessViewModelImpl

    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.yellow, .white],
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            Group {

                if !(vm.guesses.isEmpty) {
                    
                    List {
                        ForEach(vm.guesses, id: \.name) { guess in
                            GuessView(guess: guess)
                        }
                    }

                }
                
            }

        }
        
    }
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen(vm: GuessViewModelImpl(service: GuessServiceImpl()))
    }
}
