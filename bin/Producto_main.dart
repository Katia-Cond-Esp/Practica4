import 'dart:io';
import '../lib/Producto.dart';

void main(){
  print('Ingrese el nombre del producto: ');
  String nombre = stdin.readLineSync()!;
  print('Ingrese el precio del producto: ');
  double precio = double.parse(stdin.readLineSync()!);
  var producto1 = Producto(nombre, precio);

  print('=====PRODUCTO 01=====');
  producto1.mostrarInformacion();
}
