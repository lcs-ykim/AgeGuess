//
//  GuessScreen.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct GuessScreen: View {
    
    @ObservedObject var vm: GuessViewModel

    @State private var name: String = ""

    var body: some View {
        
        VStack {
            TextField("Enter Your Name", text: $name)
            
            Button("Find Age") {
                vm.getGuess()
            }
        }
    }
    
}

struct GuessScreen_Previews: PreviewProvider {
    static var previews: some View {
        GuessScreen()
    }
}
