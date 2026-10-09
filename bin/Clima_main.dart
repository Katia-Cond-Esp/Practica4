import 'package:practica_4/Clima.dart';

void main() {
  var clima1 = Clima(18);

  print('=== CONTROL DEL CLIMA ===');
  print('Temperatura: ${clima1.temperatura} °C');
  clima1.mostrarEstado();

  print('Analizando temperatura...');
  clima1.temperatura = 28;

  print('Temperatura: ${clima1.temperatura} °C');
  clima1.mostrarEstado();

  clima1.temperatura = 60;

  print('Temperatura: ${clima1.temperatura} °C');
  clima1.mostrarEstado();
}