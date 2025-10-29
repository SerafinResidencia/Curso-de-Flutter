import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:http/http.dart' as http;

class ProductsService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-296cd-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  late Product selectedProduct;

  bool isLoading = true;
  bool isSaving = false;
  ProductsService() {
    loadProducts();
  }
  // TODO: <List<Product>>
  Future loadProducts() async {
    isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'products.json');
    final resp = await http.get(url);

    final Map<String, dynamic>? productsMap = json.decode(resp.body);

    if (productsMap == null) {
      print('No hay productos en Firebase.');
      isLoading = false;
      notifyListeners();
      return [];
    }
    productsMap.forEach((key, value) {
      print('--- PRODUCTO KEY: $key ---');
      print(value); // esto imprime name, available, picture, price
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      products.add(tempProduct);
    });

    isLoading = false;
    notifyListeners();

    return products;
  }

  Future saveOrCreateProduct(Product product) async {
    isSaving = true;
    notifyListeners();
    if (product.id == null) {
      //Es necesario crear.
    } else {
      //Actualizar
      await updateProduct(product);
    }

    isSaving = false;
    notifyListeners();
  }

  Future<String> updateProduct(Product product) async {
    final url = Uri.https(_baseUrl, 'products/${product.id}.json');
    final resp = await http.put(url, body: product.toJson());
    final decodedData = resp.body;
    print(decodedData);

    return product.id!;
  }
}
