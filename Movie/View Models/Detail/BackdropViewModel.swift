//
//  BackdropViewModel.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import Foundation

class BackdropViewModel: ObservableObject {
    @Published var backdrops = [BackdropViewModel]()
    private let backdrop: Backdrop?
    private let httpClient = HTTPClient()

    init(backdrop: Backdrop? = nil) {
        self.backdrop = backdrop
    }

    func getMovieBackdrops(with movieId: String) {
        httpClient.getMovieBackdrops(with: movieId) { result in
            switch result {
            case .success(let images):
                guard let images = images else {
                    return
                }
                DispatchQueue.main.async {
                    self.backdrops = images.map(BackdropViewModel.init)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    var image: String {
        backdrop?.image ?? ""
    }
}
