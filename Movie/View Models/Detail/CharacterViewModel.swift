//
//  CharacterViewModel.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 10/01/21.
//

import Foundation

struct CharacterViewModel {
    let character: Character
    var name: String {
        character.name
    }
    var characterName: String {
        character.characterName
    }
    var image: String? {
        character.image
    }
}
