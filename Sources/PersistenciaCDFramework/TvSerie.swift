//
//  TvSerie.swift
//  MoviedbFramework
//
//  Created by temp on 26/01/22.
//

import Foundation

public struct TvSeries: Decodable {
    public let data: [TvSerie]
}

public struct TvSerie: Decodable {
    public let id, titulo, sinopsis, episodios, temporadas, lanzamiento: String
    public var imagen:String?
    
    public init(id: String, titulo: String, sinopsis: String, episodios: String, temporadas: String, lanz: String) {
        self.id = id
        self.titulo = titulo
        self.sinopsis = sinopsis
        self.episodios = episodios
        self.temporadas = temporadas
        self.lanzamiento = lanz
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case titulo = "name"
        case sinopsis = "overview"
        case lanzamiento = "first_air_date"
        case episodios = "number_of_episodes"
        case temporadas = "number_of_seasons"
        case imagen = "poster_path"
    }
    
}
