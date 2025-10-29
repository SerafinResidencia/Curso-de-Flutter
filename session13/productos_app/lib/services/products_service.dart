import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:http/http.dart' as http;

class ProductsService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-296cd-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  late Product selectedProduct;

  File? newPictureFile;

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
      await createProduct(product);
      //Es necesario crear.
    } else {
      //Actualizar
      await updateProduct(product);
    }

    isSaving = false;
    notifyListeners();
  }

  Future<String> updateProduct(Product product) async {
    // Verifica que el producto tenga ID
    if (product.id == null) {
      throw Exception('El producto no tiene un ID válido para actualizar.');
    }

    final url = Uri.https(_baseUrl, 'products/${product.id}.json');

    final resp = await http.put(url, body: product.toJson());

    // Si la respuesta no fue exitosa, lanza error
    if (resp.statusCode != 200) {
      throw Exception('Error al actualizar el producto: ${resp.body}');
    }

    final decodedData = json.decode(resp.body);
    print('Producto actualizado: $decodedData');

    // Busca el producto en la lista y actualízalo
    final index = products.indexWhere((p) => p.id == product.id);
    if (index >= 0) {
      products[index] = product;
      notifyListeners(); // 🔔 notifica cambios a los widgets
    }

    return product.id!;
  }

  Future<String> createProduct(Product product) async {
    final url = Uri.https(_baseUrl, 'products.json'); // sin product.id
    final resp = await http.post(url, body: product.toJson());

    final decodedData = json.decode(resp.body);
    print(decodedData); // { "name": "-OchvFRd9Vpa225yaLfS" }

    product.id = decodedData['name']; //  Guarda el ID generado por Firebase
    products.add(product);

    return product.id!;
  }

  void updateSelectedProductImage(String path) {
    selectedProduct.picture = path;
    newPictureFile = File(path);
    notifyListeners();
  }

  Future<String?> uploadImage() async {
    if (newPictureFile == null) return null;

    try {
      isSaving = true;
      notifyListeners();

      final url = Uri.parse(
        'https://api.cloudinary.com/v1_1/djqxkfdau/image/upload?upload_preset=upload_product',
      );

      final imageUploadRequest = http.MultipartRequest('POST', url);
      final file = await http.MultipartFile.fromPath(
        'file',
        newPictureFile!.path,
      );

      imageUploadRequest.files.add(file);

      final streamResponse = await imageUploadRequest.send();
      final resp = await http.Response.fromStream(streamResponse);

      if (resp.statusCode != 200 && resp.statusCode != 201) {
        print(' Error al subir imagen');
        print(resp.body);
        return null;
      }

      final decodedData = json.decode(resp.body);
      final secureUrl = decodedData['secure_url'] as String;
      print(' Imagen subida con éxito: $secureUrl');

      // Guarda la URL directamente en tu producto actual
      selectedProduct.picture = secureUrl;

      return secureUrl;
    } catch (e) {
      print(' Error en uploadImage: $e');
      return null;
    } finally {
      newPictureFile = null;
      isSaving = false;
      notifyListeners();
    }
  }
}
