//
//  DetailViewScreen.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct DetailViewScreen: View {
    //MARK: - Instantiate Properties

    let movieId: String

    //MARK: - Initialisation

    init(movieId: String) {
        self.movieId = movieId
    }

    //MARK: - Body View

    var body: some View {
        DetailView(Id: movieId)
    }
}

//MARK: - Preview

struct DetailViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewScreen(movieId: "1858")
    }
}
