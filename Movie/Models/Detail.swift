//
//  Detail.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import Foundation

struct Detail: Decodable {
    let backdrop: String
    let title: String
    let overview: String
    let poster: String
    let year: String
    let durantionTime: Int
    let vote: Double

    private enum CodingKeys: String, CodingKey {
        case backdrop = "backdrop_path"
        case title = "original_title"
        case overview = "overview"
        case poster = "poster_path"
        case year = "release_date"
        case durantionTime = "runtime"
        case vote = "vote_average"
    }
}

struct ImagesResponse: Decodable {
    let images: [Backdrop]

    private enum CodingKeys: String, CodingKey {
        case images = "backdrops"
    }
}

struct Backdrop: Decodable {
    let image: String

    private enum CodingKeys: String, CodingKey {
        case image = "file_path"
    }
}
