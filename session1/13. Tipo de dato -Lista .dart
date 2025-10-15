void main() {
  // <> Permiten definir el tipo de lista.
  List<int> numeros = [1, 2, 3, 4, 5];
  numeros.add(6);
  print(numeros);

  final masNumeros = List.generate(100, (int index) => index);
  print(masNumeros);
}
