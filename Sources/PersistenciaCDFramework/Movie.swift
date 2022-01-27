//
//  Movie.swift
//  MoviedbFramework
//
//  Created by temp on 26/01/22.
//

import Foundation

public struct Movies: Decodable {
    public let data: [Movie]
}

public struct Movie: Decodable {
    public let id, titulo, sinopsis, lanzamiento: String
    public var imagen:String?
    
    public init(id: String, titulo: String, sinopsis: String, lanz: String) {
        self.id = id
        self.titulo = titulo
        self.sinopsis = sinopsis
        self.lanzamiento = lanz
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case titulo = "title"
        case sinopsis = "overview"
        case lanzamiento = "release_date"
        case imagen = "poster_path"
    }
}
