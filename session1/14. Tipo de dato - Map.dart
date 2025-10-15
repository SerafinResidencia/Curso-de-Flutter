void main() {
  //Los mapas por defecto son Dinamicos.
  Map individuos = {'Nombre': 'Liza', 'Apellido': 'Simpson'};
  individuos.addAll({'Edad': '15'});

  //Mapa con valores definidos en las llaves y su valor.
  Map<String, int> valores = {'Puntuación': 23, 'Dinero': 2340};

  print(individuos);
  print(valores);
}
