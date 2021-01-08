//
//  MovieListView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 07/01/21.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var movieListViewModel = MovieListViewModel()

    var body: some View {
        List {
            ForEach(movieListViewModel.movies, id: \.movieId) { movie in
                URLImage(url: movie.poster)
                    .frame(width: 150, height: 200, alignment: .center)
            }
        }.onAppear {
            movieListViewModel.topRated()
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
