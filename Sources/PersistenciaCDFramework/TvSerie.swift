//
//  TvSerie.swift
//  MoviedbFramework
//
//  Created by temp on 26/01/22.
//

import Foundation

public struct TvSeries: Decodable {
    public let series: [TvSerie]
    public let paginas, totalPaginas, totalResultados: String
    
    enum CodingKeys: String, CodingKey {
        case paginas = "page"
        case series = "results"
        case totalPaginas = "total_pages"
        case totalResultados = "total_results"
    }
}

public struct TvSerie: Decodable {
    public let titulo, sinopsis, episodios, temporadas, lanzamiento: String
    public let id: Int
    public var imagen:String?
    
    public init(id: Int, titulo: String, sinopsis: String, episodios: String, temporadas: String, lanz: String) {
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
