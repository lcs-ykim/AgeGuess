//
//  Info.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-14.
//

import Foundation

struct Info: Decodable {
    let name: String
    let age: Int
}

extension Info {
    // For testing usage
    static let dummyData: [Info] = [
        Info(name: "Paris", age: 34),
        Info(name: "Michael", age: 69),
        Info(name: "Julie", age: 27),
        Info(name: "Catherine", age: 67),
        Info(name: "Abbigale", age: 25)
    ]
}
