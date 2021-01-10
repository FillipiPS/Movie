//
//  DetailView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct DetailView: View {
    //MARK: - Instantiate Properties

    @ObservedObject var detailViewModel: DetailViewModel
    @ObservedObject var backdropViewModel: BackdropViewModel
    let movieId: String

    //MARK: - Initialisation

    init(Id: String) {
        movieId = Id
        detailViewModel = DetailViewModel()
        backdropViewModel = BackdropViewModel()
    }

    //MARK: - Body View

    var body: some View {
        VStack {
            HeaderView(backdrop: detailViewModel.backdrop,
                       poster: detailViewModel.poster,
                       title: detailViewModel.title,
                       year: detailViewModel.year,
                       durationTime: detailViewModel.durationTime,
                       vote: detailViewModel.vote)
            ScrollableTextView(text: detailViewModel.overview)
            if backdropViewModel.backdrops.count > 0 {
                CollectionView(images: backdropViewModel.backdrops.map { $0.image })
            }
        }.onAppear {
            detailViewModel.getMovieDetails(with: movieId)
            backdropViewModel.getMovieBackdrops(with: movieId)
        }
    }
}

//MARK: - Preview

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(Id: "1858")
    }
}
