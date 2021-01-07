//
//  MovieListViewModel.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

class MovieListViewModel: ObservableObject {
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()

    func topRated() {
        httpClient.getTopRatedMovies { result in
            switch result {
            case .success(let movies):
                guard let movies = movies else {
                    return
                }
                DispatchQueue.main.async {
                    self.movies = movies.map(MovieViewModel.init)
                }

            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
