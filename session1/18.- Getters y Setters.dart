import 'dart:math' as math;

void main() {
  final cuadrado = new Cuadrado(2); //Queda invalidado por el set.
  cuadrado.area = 100; //Set, permite acceder auna propiedad
  //específica y usarla. En este caso se asigno un valor.

  print('Lado: ${cuadrado.lado}');
  print('Area get: ${cuadrado.area}');
}

class Cuadrado {
  double lado; //Creación de la variable
  Cuadrado(double lado) : this.lado = lado; //Inicialización de la variable
  //ya que ("double lado") no puede ser nulo.

  double get area {
    return this.lado * this.lado;
  }

  set area(double valor) {
    this.lado = math.sqrt(valor);
  }

  double calcularArea() {
    return this.lado * this.lado;
  }
}
