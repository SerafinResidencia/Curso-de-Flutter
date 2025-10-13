//Se usan para definir tareas asincronas que se ejecutarán
//en "segundo plano", o en otro hilo, sin interrumpir la ejecución
//principal.
void main() {
  print('>>>>>>>Antes de la petición');

  //Simulación de petición http
  httpGet('https://google.com').then((data) {
    print(data.toUpperCase());
  });

  print(">>>>>>>>>>>Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(
    Duration(seconds: 3),
    () => '!What´s up¡  after 3 seconds.',
  );
}
