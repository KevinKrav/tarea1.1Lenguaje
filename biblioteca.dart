
class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;
  
   Libro({
    required this.titulo,
    required this.autor,
    required this.anioPublicacion,
  });
  
  @override
  String toString() {
    return '"$titulo" de $autor ($anioPublicacion)';
  }
}

class Biblioteca {
  List<Libro> _libros = [];

  void agregarLibro(Libro libro) {
    _libros.add(libro);
  }

  void eliminarLibro(String titulo) {
    _libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> buscarPorAutor(String autor) {
    return _libros.where((libro) => libro.autor == autor).toList();
  }

  List<Libro> listarLibrosOrdenadosPorAnio() {
    List<Libro> librosOrdenados = List.from(_libros);
    librosOrdenados.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return librosOrdenados;
  }
}