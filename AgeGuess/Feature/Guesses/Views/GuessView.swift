//
//  GuessView.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct GuessView: View {
        
    let guess: Guess

    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {

            Text("Your Profile")
                .font(.title)
            Text("Apologies for the lag")
                .font(.title2)
            Text("Name: \(guess.name)")
            Text("Age: \(guess.age)")
                .lineLimit(2)
            
        }
        .padding()
        .foregroundColor(.black)
        
    }

}

struct GuessView_Previews: PreviewProvider {
    static var previews: some View {
        GuessView(guess: Guess.dummyData.first!)
    }
}
