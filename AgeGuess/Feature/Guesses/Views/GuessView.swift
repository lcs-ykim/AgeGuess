//
//  GuessView.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct GuessView: View {
        
    let guess: Info

    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
//            HStack {
//                Image(systemName: "tv")
//                    .font(.system(size: 12, weight: .black))
//                Text(item.anime)
//            }
//
            Text("Name: \(guess.name)")
            Text("Age: \(guess.age)")
                .lineLimit(2)
            
        }
        .padding()
        .foregroundColor(.black)
        
    }
    
//    private func makeAttributedString(title: String, label: Double) -> AttributedString {
//
//        var string = AttributedString("\(title):" String(label))
//        string.foregroundColor = .black
//        string.font = .system(size: 16, weight: .bold)
//
//        if let range = string.range(of: label) {
//            string[range].foregroundColor = .black.opacity(0.8)
//            string[range].font = .system(size: 16, weight: .regular)
//
//        }
//        return string
//    }

}

struct GuessView_Previews: PreviewProvider {
    static var previews: some View {
        GuessView(guess: Info.dummyData.first!)
    }
}
