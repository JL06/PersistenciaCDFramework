import Foundation
import CoreData


public class PersistenciaCDFramework {
    private let contenedor: NSPersistentContainer!

    public init() {
        self.contenedor = NSPersistentContainer(name: "MovieDB")
        self.contenedor.loadPersistentStores { descrip, error in
            if let err = error {
                print("Error loading store \(descrip) — \(err)")
                return
            }
            print("DB lista")
            //finalizado()
        }
    }
    
    public func nuevaPelicula (id: String, titulo: String, sinopsis: String, lanzamiento: String) {
        let peli = MovieCD(context: self.contenedor.viewContext)
        peli.id = id
        peli.lanzamiento = lanzamiento
        peli.sinopsis = sinopsis
        peli.titulo = titulo
        
        do {
            try self.contenedor.viewContext.save()
        } catch {
            print("Error guardando peli \(error)")
        }
    }
    
    public func obtenerPeliculas () -> [MovieCD] {
        let req: NSFetchRequest<MovieCD> = MovieCD.fetchRequest()
        var pelis: [MovieCD] = []
        
        do {
            try pelis = self.contenedor.viewContext.fetch(req)
        } catch {
            print("Error obteniendo MovieCD \(error)")
        }
        
        return pelis
    }
    
    
    
}
