//
//  Movie.swift
//  MovieAppProject
//
//  Created by Mete Varol on 10.07.2024.
//

import Foundation

struct Movie: Decodable {
    let id: Int
    let title: String
    let posterPath: String
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case posterPath = "poster_path"
    }
     
}

