//
//  MovieListView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 07/01/21.
//

import SwiftUI

struct MovieListView: View {
    //MARK: - Instantiate Properties
    
    @ObservedObject var movieListViewModel = MovieListViewModel()

    //MARK: - Body View

    var body: some View {
        List {
            ForEach(movieListViewModel.movies, id: \.movieId) { movie in
                CellView(movie: movie)
            }
        }.onAppear {
            movieListViewModel.topRated()
        }
    }
}

//MARK: - Preview

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
