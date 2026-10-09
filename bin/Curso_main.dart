import 'dart:io';
import 'package:practica_4/Curso.dart';

void main() {
  print('Ingrese el nombre del curso:');
  String nombreCurso = stdin.readLineSync()!;

  print('Ingrese el nombre del docente:');
  String nombreDocente = stdin.readLineSync()!;

  Curso curso1 = Curso(nombreCurso, nombreDocente);

  int contador = 0;

  while (contador < 5) {
    print('Ingrese la calificación ${contador + 1} (0 a 20):');
    double nota = double.parse(stdin.readLineSync()!);

    if (nota >= 0 && nota <= 20) {
      curso1.agregarCalificacion(nota);
      contador++;
    } else {
      print('La calificación no es válida. Intente nuevamente.');
    }
  }

  print('\n===== IESTPH =====');
  print('Nombre del curso: ${curso1.nombreCurso}');
  print('Docente: ${curso1.nombreDocente}');
  print('Calificaciones: ${curso1.calificaciones}');
  print('Promedio: ${curso1.calcularPromedio().toStringAsFixed(2)}');
  print('Calificación más alta: ${curso1.obtenerCalificacionAlta()}');
  print('Estado final: ${curso1.obtenerEstadoFinal()}');
}