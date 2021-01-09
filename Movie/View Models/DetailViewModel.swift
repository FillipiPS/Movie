//
//  DetailViewModel.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var detail: Detail?
    private let httpClient = HTTPClient()

    init(detail: Detail? = nil) {
        self.detail = detail
    }

    func getMovieDetails(with movieId: String) {
        httpClient.getMovieDetails(with: movieId) { result in
            switch result {
            case .success(let details):
                DispatchQueue.main.async {
                    self.detail = details
                }

            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    var backdrop: String {
        detail?.backdrop ?? ""
    }
    var title: String {
        detail?.title ?? ""
    }
    var overview: String {
        detail?.overview ?? ""
    }
    var poster: String {
        detail?.poster ?? ""
    }
    var year: String {
        guard let year = detail?.year.components(separatedBy: "-") else {
            return ""
        }
        return year[0]
    }
    var durationTime: String {
        guard let duration = detail?.durantionTime else {
            return ""
        }
        let hour = duration / 60
        let minutes = duration - (hour * 60)
        return "Duração \(hour)h \(minutes)m"
    }
    var vote: String {
        String(detail?.vote ?? 0.0)
    }
}
