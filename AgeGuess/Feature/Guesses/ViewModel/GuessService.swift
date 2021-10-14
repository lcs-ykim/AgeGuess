//
//  GuessService.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import Foundation

protocol GuessService {
    func fetchGuess() async throws -> Info
}

final class GuessServiceImpl: GuessService {
    
    func fetchGuess(name: String) async throws -> Info {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("?name=\(name)"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode(Info.self, from: data)
    }
}
