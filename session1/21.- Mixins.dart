//Mixin permite mezclar clases, para obtener sus propiedades y utilizarlas.
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class pez extends Animal {}

mixin class Caminar {
  void caminar() => print('Estoy caminando');
}

mixin class Volar {
  void volar() => print('Estoy volando');
}

mixin class Nadar {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadar {}

class Murcielago extends Mamifero with Caminar, Volar {}

void main() {
  final marino = new Delfin();
  marino.nadar();

  final volador = new Murcielago();
  volador.volar();
  volador.caminar();
}
