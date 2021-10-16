//
//  Guess.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-16.
//

import Foundation

struct Guess: Decodable {
    let name: String
    let age: Int
}

extension Guess {
    // For testing usage
    static let dummyData: [Guess] = [
        Guess(name: "Paris", age: 34),
        Guess(name: "Michael", age: 69),
        Guess(name: "Julie", age: 27),
        Guess(name: "Catherine", age: 67),
        Guess(name: "Abbigale", age: 25)
    ]
}
