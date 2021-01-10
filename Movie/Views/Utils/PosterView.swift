//
//  PosterView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 07/01/21.
//

import SwiftUI

struct PosterView: View {
    //MARK: - Instantiate Properties

    let path: String

    //MARK: - Body View

    var body: some View {
        URLImage(url: path)
            .frame(width: 115, height: 160)
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.green, lineWidth: 3)
            )
    }
}

//MARK: - Preview

struct PosterView_Previews: PreviewProvider {
    static var previews: some View {
        PosterView(path: "/6eehp9I54syN3x753XMqjKz8M3F.jpg")
    }
}
