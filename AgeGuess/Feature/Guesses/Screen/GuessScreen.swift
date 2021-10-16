//
//  GuessScreen.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct GuessScreen: View {
    
    @ObservedObject var vm = GuessViewModelImpl(service: GuessServiceImpl())

    @State private var name: String = ""

    @State var guess: Guess = Guess(name: "Paris", age: 34)
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.yellow, .white],
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
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

        }

    }
    
}

struct GuessScreen_Previews: PreviewProvider {
    static var previews: some View {
        GuessScreen(vm: GuessViewModelImpl(service: GuessServiceImpl()))
    }
}
