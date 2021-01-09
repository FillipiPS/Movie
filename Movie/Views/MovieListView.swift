//
//  MovieListView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 07/01/21.
//

import SwiftUI

struct MovieListView: View {
    //MARK: - Instantiate Properties

    let movies: [MovieViewModel]

    //MARK: - Body View

    var body: some View {
        ScrollView {
            ForEach(movies, id: \.movieId) { movie in
                CellView(movie: movie)
            }
        }
    }
}

//MARK: - Preview

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie(poster: "/6eehp9I54syN3x753XMqjKz8M3F.jpg",
                                  title: "Transformers",
                                  overview: "Young teenager, Sam Witwicky becomes involved in the ancient struggle between two extraterrestrial factions of transforming robots – the heroic Autobots and the evil Decepticons. Sam holds the clue to unimaginable power and the Decepticons will stop at nothing to retrieve it.",
                                  year: "2007",
                                  vote: 6.7,
                                  movieId: 1858)
                let movie2 = Movie(poster: "/wqnLdwVXoBjKibFRR5U3y0aDUhs.jpg",
                                   title: "Star Wars: The Force Awakens",
                                   overview: "Thirty years after defeating the Galactic Empire, Han Solo and his allies face a new threat from the evil Kylo Ren and his army of Stormtroopers.",
                                   year: "2015",
                                   vote: 7.4,
                                   movieId: 140607)
                let movies = [MovieViewModel(movie: movie), MovieViewModel(movie: movie2)]

        MovieListView(movies: movies)
    }
}
