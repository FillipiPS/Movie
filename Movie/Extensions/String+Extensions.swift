//
//  String+Extensions.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 10/01/21.
//

import Foundation

extension String {
    func insert(value: String) -> String {
        replacingOccurrences(of: "@", with: value)
    }
}
