//
//  Movie.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

struct MovieResponse: Decodable {
    let movies: [Movie]

    private enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}

struct Movie: Decodable {
    let poster: String
    let title: String
    let overview: String
    let year: String
    let vote: Double
    let movieId: Int

    private enum CodingKeys: String, CodingKey {
        case poster = "poster_path"
        case title = "title"
        case overview = "overview"
        case year = "release_date"
        case vote = "vote_average"
        case movieId = "id"
    }
}
