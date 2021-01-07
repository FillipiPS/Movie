//
//  MovieViewModel.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

struct MovieViewModel {
    let movie: Movie
    var poster: String {
        movie.poster
    }
    var title: String {
        movie.title
    }
    var overview: String {
        movie.overview
    }
    var year: String {
        let year = movie.year.components(separatedBy: "-")
        return year[0]
    }
    var vote: String {
        String(movie.vote)
    }
    var movieId: String {
        String(movie.movieId)
    }
}
