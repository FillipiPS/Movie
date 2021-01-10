//
//  Cast.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 10/01/21.
//

import Foundation

struct CastResponse: Decodable {
    let cast: [Character]
}

struct Character: Decodable {
    let name: String
    let characterName: String
    let image: String?
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case characterName = "character"
        case image = "profile_path"
    }
}
