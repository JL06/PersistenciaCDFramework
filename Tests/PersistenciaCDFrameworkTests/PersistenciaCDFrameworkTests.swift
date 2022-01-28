import XCTest
@testable import PersistenciaCDFramework

final class PersistenciaCDFrameworkTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(PersistenciaCDFramework().text, "Hello, World!")
    }
    
    func testGuardarPeli () {
        let manejador = PersistenciaCDFramework()
        let titulo = "Club de la pelea"
        
        manejador.nuevaPelicula(id: "550", titulo: titulo, sinopsis: "Una pelicula con Brad Pitt", lanzamiento: "2000")
        let pelis = manejador.obtenerPeliculas()
        
        XCTAssertEqual(pelis[0].titulo, titulo)
    }
    
    func testMovie () {
        let peli = Movie(id: 1, titulo: "Club de la Pelea", sinopsis: "Descripcion", lanz: "2000")
        XCTAssertNotNil(peli)
        XCTAssertEqual(peli.titulo, "Club de la Pelea")
    }
    
    func testTvSerie () {
        let serie = TvSerie(id: 1, titulo: "Dexter", sinopsis: "Asesino Serial", lanz: "2002", votos: 7.5)
        XCTAssertNotNil(serie)
        XCTAssertEqual(serie.titulo, "Dexter")
        
    }
}
