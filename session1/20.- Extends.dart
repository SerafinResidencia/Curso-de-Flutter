void main() {
  final superman = new Heroe('Clark kennt', 'Ivulnerabilidad');
  final luthor = new Villano('Lex Luthor', 'Dinero');
  print(superman);
  print(luthor);
}

//La clase abstracta permite que una clase extendida apartir
//de esta tenga ya la configuracíon e implementación de los métodos y
//propiedades (Obliga la existencia de cada uno de estos en la clase final).
abstract class Personaje {
  String poder;
  String nombre;

  Personaje(this.nombre, this.poder);
  //Constructor para la inicialización de ambas variables.

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int Valentia = 100;
  Heroe(String nombre, String poder) : super(nombre, poder);
  //Se definierón los 2 argumentos de la clase Personaje como "super"
  //debido a que esta clase esta extendida de la anterior.
}

class Villano extends Personaje {
  int Maldad = 100;
  Villano(String nombre, String poder) : super(nombre, poder);
}
