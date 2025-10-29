import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Product product;

  ProductFormProvider(this.product);

  updateAvailability(bool value) {
    print(value);
    product.available = value;
    notifyListeners();
  }

  bool isValidForm() {
    // Dispara las validaciones
    final isValid = formKey.currentState?.validate() ?? false;

    if (!isValid) {
      print('Formulario inválido');
      return false;
    }

    // Guarda los valores si tienes onSaved en los TextFormFields
    formKey.currentState?.save();

    print('--- PRODUCTO ---');
    print('Nombre: ${product.name}');
    print('Precio: ${product.price}');
    print('Disponible: ${product.available}');

    return true;
  }
}
