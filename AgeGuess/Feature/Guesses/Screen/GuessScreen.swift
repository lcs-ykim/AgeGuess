//
//  GuessScreen.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct GuessScreen: View {
    
    @StateObject var vm = GuessViewModelImpl(service: GuessServiceImpl())

    @State private var name: String = ""

    @State var guess: Info = Info(name: "Paris", age: 34)
    
    var body: some View {
        
        VStack {
            
            GuessView(guess: guess)
            
            TextField("Enter Your Name", text: $name)
                .padding()
                
            Button("Find My Age") {
                
                Task {
                    
                   await  vm.getGuess(name: name)
                    guess = vm.guesses.last!
                    print(guess)
                
                }
                
               
                
            }
            
        }
//        .task {
//
//            if !(name.isEmpty) {
//
//                await vm.getGuess(name: name)
//
//            }
//
//        }
    }
    
}

struct GuessScreen_Previews: PreviewProvider {
    static var previews: some View {
        GuessScreen(vm: GuessViewModelImpl(service: GuessServiceImpl()))
    }
}
