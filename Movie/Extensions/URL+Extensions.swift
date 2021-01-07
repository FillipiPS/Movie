//
//  URL+Extensions.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

extension URL {
    static func getTopRatedMovies() -> URL? {
        return URL(string: "https://api.themoviedb.org/3/movie/top_rated?language=pt-BR&page=1&api_key=\(Constants.apiKey)")
    }
}
