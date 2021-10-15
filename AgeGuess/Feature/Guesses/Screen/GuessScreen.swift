//
//  GuessScreen.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct GuessScreen: View {
    
    @ObservedObject var vm: GuessViewModelImpl

    @State private var name: String = ""

    @State var guess: Info = Info(name: "Paris", age: 34)
    
    var body: some View {
        
        VStack {
            
            GuessView(guess: guess)
            
            TextField("Enter Your Name", text: $name)
                .padding()
                
            if vm.guesses.isEmpty {

                Text("Loading Data")
                
            } else {
                
                Button("Find My Age") {
                    
                    guess = vm.guesses.last!
                    
                }

            }
            
        }
        .task {

            await vm.getGuess(name: name)

        }
    }
    
}

struct GuessScreen_Previews: PreviewProvider {
    static var previews: some View {
        GuessScreen(vm: GuessViewModelImpl(service: GuessServiceImpl()))
    }
}
