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

            Text("Profile")
                .font(.title)
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
