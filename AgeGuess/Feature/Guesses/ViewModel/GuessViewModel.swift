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
    
    @Published private(set) var guesses: [Guess] = []
    
    private let service: GuessService
    
    init(service: GuessService) {
        self.service = service
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
