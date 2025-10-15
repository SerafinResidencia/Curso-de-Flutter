void main() {
  final perro = new Perro();
  final gato = new Gato();

  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

//Las clases abstractas permiten definir que parámetros (métodos) que debe de
//implementar otra clase para poder crear una instancia (objeto)
//y usar los parámteros.
abstract class Animal {
  int? patas;
  void emitirSonido();
}

class Perro implements Animal {
  int? patas;

  void emitirSonido() => print('Guauuuu');
}

class Gato implements Animal {
  int? patas;
  int? cola;

  void emitirSonido() => print('Miauuuuu');
}
