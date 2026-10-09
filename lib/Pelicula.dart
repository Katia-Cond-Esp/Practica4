class Pelicula{
  String? titulo;
  String? director;
  int? duracion;

  Pelicula(this.titulo, this.director, this.duracion);

  void mostrarInformacion(){
    print('Título: $titulo' );
    print('Director: $director' );
    print('Duración: $duracion' );

  }

}