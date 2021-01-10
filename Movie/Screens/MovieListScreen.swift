//
//  MovieListScreen.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct MovieListScreen: View {
    //MARK: - Instantiate Properties

    @ObservedObject var movieListViewModel: MovieListViewModel

    //MARK: - Initialisation

    init() {
        movieListViewModel = MovieListViewModel()
    }

    //MARK: - Body View
    
    var body: some View {
        MovieListView(movies: movieListViewModel.movies)
            .onAppear {
                movieListViewModel.topRated()
            }
    }
}

//MARK: - Preview

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
