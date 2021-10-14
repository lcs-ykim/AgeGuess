//
//  GuessViewModel.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import Foundation

protocol GuessViewModel: ObservableObject {
    func getGuess() async
}

@MainActor
final class GuessViewModelImpl: GuessViewModel {
    
    @Published private(set) var guesses: [Info] = []
    
    private let service: GuessService
    
    init(service: GuessService) {
        self.service = service
    }
    
    func getGuess() async {
        do {
            self.guesses = try await service.fetchGuess()
        } catch {
            print(error)
        }
    }
}
