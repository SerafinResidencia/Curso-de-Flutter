import 'dart:convert';

class Product {
  bool available;
  String name;
  String? picture;
  double price;
  String? id;

  Product({
    this.id,
    required this.available,
    required this.name,
    this.picture,
    required this.price,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
    available: json["available"] ?? true,
    name: json["name"] ?? '',
    picture: json["picture"],
    price: _parsePrice(json["price"]),
  );

  Map<String, dynamic> toMap() => {
    "available": available,
    "name": name,
    "picture": picture,
    "price": price,
  };

  // 🔹 Maneja precios que vengan como int, double o String
  static double _parsePrice(dynamic value) {
    if (value == null) return 0.0;
    if (value is int) return value.toDouble();
    if (value is double) return value;
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }
}
