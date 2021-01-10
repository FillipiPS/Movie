//
//  CastViewModel.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 10/01/21.
//

import Foundation

class CastViewModel: ObservableObject {
    @Published var characters = [CharacterViewModel]()
    private let httpClient = HTTPClient()

    func getMovieCast(with movieId: String) {
        httpClient.getMovieCast(with: movieId) { result in
            switch result {
            case .success(let character):
                guard let characters = character else {
                    return
                }
                DispatchQueue.main.async {
                    self.characters = characters.map(CharacterViewModel.init)
                }

            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    
}
