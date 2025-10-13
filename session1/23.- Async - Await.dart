//Se usan para definir tareas asincronas que se ejecutarán
//en "segundo plano", o en otro hilo, sin interrumpir la ejecución
//principal.
void main() async {
  print('>>>>>>>Antes de la petición');

  //Simulación de petición http
  final data = await httpGet('http://google.com');

  print(data);

  final nombre = await getNombre('1000');
  print(nombre);

  print(">>>>>>>>>>>Fin del programa");
}

//Función asincrona
Future<String> getNombre(String id) async {
  return '$id - Sera';
}

Future<String> httpGet(String url) {
  return Future.delayed(
    Duration(seconds: 3),
    () => '!What´s up¡  after 3 seconds.',
  );
}
