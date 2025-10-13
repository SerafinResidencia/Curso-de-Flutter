void main() {
  /*El sibolo ? permite definir manualmente si una variable
 puede ser nula o no.
 En caso de permitirlo, no se podra evaluar como booleano,
 osea ni como true ni false.
  */

  bool? isActive = null;
  if (isActive == null) {
    print('isActive es nulo');
  } else {
    print('isActive no es nulo');
  }
}
