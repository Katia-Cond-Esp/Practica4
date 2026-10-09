class Curso {
  String nombreCurso;
  String nombreDocente;
  List<double> calificaciones = [];

  Curso(this.nombreCurso, this.nombreDocente);

  void agregarCalificacion(double nota) {
    calificaciones.add(nota);
  }

  double calcularPromedio() {
    double suma = 0;

    for (int i = 0; i < calificaciones.length; i++) {
      suma = suma + calificaciones[i];
    }

    return suma / calificaciones.length;
  }

  double obtenerCalificacionAlta() {
    double mayor = calificaciones[0];

    for (int i = 1; i < calificaciones.length; i++) {
      if (calificaciones[i] > mayor) {
        mayor = calificaciones[i];
      }
    }

    return mayor;
  }

  String obtenerEstadoFinal() {
    double promedio = calcularPromedio();

    if (promedio <= 12.99) {
      return 'Desaprobado';
    } else if (promedio <= 15.99) {
      return 'Aprobado';
    } else if (promedio <= 18.99) {
      return 'Aprobado - Buen rendimiento';
    } else {
      return 'Aprobado - Excelente';
    }
  }
}
