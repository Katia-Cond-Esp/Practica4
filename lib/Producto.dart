class Producto {
  String? nombre;
  double? precio;
  double descuento = 0;

  Producto(this.nombre, this.precio);

  String calcularPrecioFinal() {
    if (precio! >= 100) {
      descuento = precio! * 0.10;
      double precioFinal = precio! - descuento;
      return 'Precio final: $precioFinal';
    } else {
      return 'Precio final: $precio';
    }
  }

  void mostrarInformacion(){
    print("Nombre: $nombre");
    print("Precio Original: $precio");
    print("Decuento: $descuento");
    print(calcularPrecioFinal());
  }
}