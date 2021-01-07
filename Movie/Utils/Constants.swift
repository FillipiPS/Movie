//
//  Constants.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

struct Constants {
    static var apiKey: String {
        get {
            guard let path = Bundle.main.path(forResource: "Secrets", ofType: "plist"),
                  let nsDictionary = NSDictionary(contentsOfFile: path),
                  let key = nsDictionary["API Key"] as? String else {
                return ""
            }

            return key
        }
    }
}
