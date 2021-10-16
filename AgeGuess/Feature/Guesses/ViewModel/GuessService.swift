//
//  GuessService.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import Foundation

protocol GuessService {
    func fetchGuess(name: String) async throws -> Guess
}

final class GuessServiceImpl: GuessService {
    
    func fetchGuess(name: String) async throws -> Guess {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("?name=\(name)"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode(Guess.self, from: data)
    }
}
