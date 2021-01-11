//
//  Constants.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

struct Constants {
    //MARK: - API KEY

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

    //MARK: - Image

    struct Image {
        static let placeholder = "placeholder"
    }

    //MARK: - View Properties

    struct View {
        static let cast = "Elenco"
        static let vote = "Média: @"
    }

    //MARK: - Navigation Bar

    struct NavigationBar {
        static let topRatedMoviesTitle = "Top Rated Movies"
        static let noTitle = ""
    }

}
