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

    var body: some View {
        
        VStack {
            TextField("Enter Your Name", text: $name)
            
            Button("Find Age") {
                vm.getGuess(name: name)
            }
        }
    }
    
}

struct GuessScreen_Previews: PreviewProvider {
    static var previews: some View {
        GuessScreen(vm: GuessViewModelImpl(service: GuessServiceImpl(), name: <#T##String#>))
    }
}
