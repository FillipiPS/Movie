//
//  ImageLoader.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

class ImageLoader: ObservableObject {
    @Published var downloadedData: Data?

    func downloadImage(url: String?) {
        guard let path = url,
              let imageURL = URL.getImage(with: path) else {
            return
        }
        URLSession.shared.dataTask(with: imageURL) { (data, _, error) in
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }.resume()
    }
}
