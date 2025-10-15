void main() {
  // final Wolwerine = new Heroe(nombre: 'Logan', poder: 'Regeneración');
  //print(Wolwerine);
  final rawjson = {'nombre': 'Tony Stark', 'poder': 'Dinero'};

  final ironman = Heroe.fromjson(rawjson);
  print(ironman);
}

class Heroe {
  String nombre;
  String poder;

  /*Cuando un constructor (Función Heroe) esta dentro de una función
se le llama método.*/
  Heroe({required this.nombre, required this.poder});

  //Los : (dos puntos) indican que el método se ejecutará al crear la instancia
  //de la clase.
  Heroe.fromjson(Map<String, String> json)
    : this.nombre = json['nombre'] ?? 'No tiene nombre',
      this.poder = json['poder'] ?? 'No tiene poder';

  @override //Sobre-escritura de la función.
  String toString() {
    return 'Nombre : ${this.nombre}, poder: ${this.poder}';
  }
}
