void main() {
  final nombre = 'Sera';
  saludar2(nombre: nombre, mensaje: 'Que tal');
}

//Se pueden configruar los argumentos que recibe una función.
//Los [] permiten definir un argumento como opcional.
void saludar(String nombre, [String mensaje = 'Hi']) {
  print('$mensaje,$nombre');
}

//"Required" permite definir la obligacion de argumentos.
void saludar2({required String nombre, required String mensaje}) {
  print('$mensaje, $nombre ');
}
