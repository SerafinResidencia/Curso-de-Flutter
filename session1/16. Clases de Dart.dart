void main() {
  final Wolwerine = new Heroe(nombre: 'Logan', poder: 'Regeneración');
  print(Wolwerine);
}

class Heroe {
  String nombre;
  String poder;

  /*Cuando un constructor (Función Heroe) esta dentro de una función
se le llama método.*/
  Heroe({required this.nombre, required this.poder});

  @override
  String toString() {
    return 'Nombre : ${this.nombre}, poder: ${this.poder}';
  }
}
