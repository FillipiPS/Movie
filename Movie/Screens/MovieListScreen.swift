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
    @ObservedObject var backdropViewModel: BackdropViewModel

    //MARK: - Initialisation

    init() {
        movieListViewModel = MovieListViewModel()
        backdropViewModel = BackdropViewModel()
    }

    //MARK: - Body View
    
    var body: some View {
        MovieListView(movies: movieListViewModel.movies)
            .onAppear {
                movieListViewModel.topRated()
                backdropViewModel.getMovieBackdrops(with: "1858")
            }
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
