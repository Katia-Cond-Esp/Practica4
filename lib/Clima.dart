class Clima {

  double _temperatura;

  Clima(this._temperatura);

  double get temperatura {
    return _temperatura;
  }

  set temperatura(double nuevaTemperatura) {
    if (nuevaTemperatura >= -20 && nuevaTemperatura <= 50) {
      _temperatura = nuevaTemperatura;
    } else {
      print('Temperatura no válida.');
    }
  }

  void mostrarEstado() {
    if (_temperatura < 10) {
      print('Hace frío.');
    } else if (_temperatura <= 24) {
      print('Temperatura agradable.');
    } else {
      print('Hace calor.');
    }
  }
}