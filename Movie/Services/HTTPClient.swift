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
    
    func getMovieDetails(with id: String, completion: @escaping (Result<Detail?, NetworkError>) -> Void) {
        guard let url = URL.getMovieDetails(with: id) else {
            return completion(.failure(.badURL))
        }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }

            guard let movieDetails = try? JSONDecoder().decode(Detail.self, from: data) else {
                return completion(.failure(.decodingError))
            }

            completion(.success(movieDetails))
        }.resume()
    }

    func getMovieBackdrops(with id: String, completion: @escaping (Result<[Backdrop]?, NetworkError>) -> Void) {
            guard let url = URL.getMovieBackdrops(with: id) else {
                return completion(.failure(.badURL))
            }

            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data, error == nil else {
                    return completion(.failure(.noData))
                }

                guard let movieImages = try? JSONDecoder().decode(ImageResponse.self, from: data) else {
                    return completion(.failure(.decodingError))
                }

                completion(.success(movieImages.images))
            }.resume()
        }
}
