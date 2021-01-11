//
//  URLImage.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import SwiftUI

struct URLImage: View {

    //MARK: - Instatiate Properties

    let url: String?
    let placeholder: String
    @ObservedObject var imageLoader = ImageLoader()

    //MARK: - Initialisation

    init(url: String?, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }

    //MARK: - Body View

    var body: some View {
        guard let data = imageLoader.downloadedData,
              let image = UIImage(data: data) else {
            return Image(placeholder).resizable()
        }

        return Image(uiImage: image).resizable()
    }
}
