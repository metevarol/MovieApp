//
//  APITestViewModel.swift
//  MovieAppProject
//
//  Created by Mete Varol on 10.07.2024.
//

import Foundation

class APITestViewModel {
    private var movieService: MovieService
    
    init(movieService: MovieService) {
        self.movieService = movieService
    }
    
    func testFetchMovies() {
        movieService.fetchMovies { movies in
            if let movies = movies {
                for movie in movies {
                    print("Movie: \(movie.title)")
                }
            } else {
                print("Failed to fetch movies.")
            }
        }
    }
}
