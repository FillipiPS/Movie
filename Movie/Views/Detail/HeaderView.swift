//
//  HeaderView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - Instantiate Properties

    let backdrop: String
    let poster: String
    let title: String
    let year: String
    let durationTime: String
    let vote: String

    //MARK: - Body View

    var body: some View {
        ZStack {
            URLImage(url: backdrop)
                .frame(height: 270)
            Rectangle()
                .fill(Color.black.opacity(0.5))
                .frame(height: 270)
            HStack(alignment: .top, spacing: 10) {
                PosterView(path: poster)
                    .padding(.leading)
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title)
                    Text(year)
                    Text(durationTime)
                    Text("Média: \(vote)")
                }.foregroundColor(.white)
                .padding(.top, 10)
                Spacer()
            }.padding(.top, 100)
        }
    }
}

//MARK: - Preview

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        let backdrop = "/77P56ZcL8M9Cw7FIptMIGjhNJoj.jpg"
        let title = "Transformers"
        let poster = "/6eehp9I54syN3x753XMqjKz8M3F.jpg"
        let durationTime = "2h 20min"
        let year = "2007"
        let vote = "6.7"

        HeaderView(backdrop: backdrop,
                   poster: poster,
                   title: title,
                   year: year,
                   durationTime: durationTime,
                   vote: vote)
    }
}
