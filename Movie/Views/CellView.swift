//
//  CellView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 07/01/21.
//

import SwiftUI

struct CellView: View {
    //MARK: - Instantiate Properties
    
    let movie: MovieViewModel

    //MARK: - Body View

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            PosterView(path: movie.poster)
                .padding(5)
            VStack(alignment: .leading) {
                Text(movie.title)
                    .fontWeight(.black)
                Text(movie.overview)
                    .frame(height: 80)
                Spacer()
                HStack {
                    Text("Média: \(movie.vote)")
                    Spacer()
                    Text(movie.year)
                }
                Spacer()
            }
            .padding(.top)
            .padding(.trailing)
        }
        .background(Color(UIColor(red: 0.91, green: 0.92, blue: 0.90, alpha: 1.00)))
        .frame(height: 170)
        .cornerRadius(12)
        .padding(EdgeInsets(top: 1.25, leading: 5, bottom: 1.25, trailing: 5))
    }
}

//MARK: - Preview

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie(poster: "/6eehp9I54syN3x753XMqjKz8M3F.jpg",
                                  title: "Transformers",
                                  overview: "Young teenager, Sam Witwicky becomes involved in the ancient struggle between two extraterrestrial factions of transforming robots – the heroic Autobots and the evil Decepticons. Sam holds the clue to unimaginable power and the Decepticons will stop at nothing to retrieve it.",
                                  year: "2007",
                                  vote: 6.7,
                                  movieId: 1858)
        let movieViewModel = MovieViewModel(movie: movie)
        CellView(movie: movieViewModel)
    }
}
