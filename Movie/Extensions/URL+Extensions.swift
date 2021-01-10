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

    static func getMovieDetails(with id: String) -> URL? {
        return URL(string: "https://api.themoviedb.org/3/movie/\(id)?api_key=\(Constants.apiKey)&language=pt-BR")
    }

    static func getMovieBackdrops(with id: String) -> URL? {
        return URL(string: "https://api.themoviedb.org/3/movie/\(id)/images?&api_key=\(Constants.apiKey)")
    }

    static func getImage(with path: String) -> URL? {
        return URL(string: "https://image.tmdb.org/t/p/w500\(path)")
    }
}
