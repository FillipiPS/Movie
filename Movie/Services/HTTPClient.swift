//
//  HTTPClient.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 06/01/21.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case noData
    case decodingError
}

class HTTPClient {
    func getTopRatedMovies(completion: @escaping (Result<[Movie]?, NetworkError>) -> Void) {
        guard let url = URL.getTopRatedMovies() else {
            return completion(.failure(.badURL))
        }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }

            guard let moviesResponse = try? JSONDecoder().decode(MovieResponse.self, from: data) else {
                return completion(.failure(.decodingError))
            }

            completion(.success(moviesResponse.movies))
        }.resume()
    }
}
