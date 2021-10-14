//
//  GuessViewModel.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import Foundation

protocol GuessViewModel: ObservableObject {
    func getGuess(name: String) async
}

@MainActor
final class GuessViewModelImpl: GuessViewModel {
    
    @Published private(set) var guesses: [Info] = []
    
    private let service: GuessService
    
    let name: String
    
    init(service: GuessService, name: String) {
        self.service = service
        self.name = name
    }
    
    func getGuess(name: String) async {
        do {
            
            let newGuess = try await service.fetchGuess(name: name)
            
            guesses.append(newGuess)
            
        } catch {
            print(error)
        }
    }
}
