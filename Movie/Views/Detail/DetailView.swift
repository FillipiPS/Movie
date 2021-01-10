//
//  DetailView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct DetailView: View {
    //MARK: - Instantiate Properties

    @ObservedObject var detailViewModel = DetailViewModel()

    //MARK: - Body View

    var body: some View {
        VStack {
            HeaderView(backdrop: detailViewModel.backdrop,
                       poster: detailViewModel.poster,
                       title: detailViewModel.title,
                       year: detailViewModel.year,
                       durationTime: detailViewModel.durationTime,
                       vote: detailViewModel.vote)
                .onAppear {
                    detailViewModel.getMovieDetails(with: "1858")
                }
        }
    }
}

//MARK: - Preview

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
