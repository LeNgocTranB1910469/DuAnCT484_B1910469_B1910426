// ignore: file_names
import 'package:flutter/material.dart';

class Product {
  final String? id;
  final String image, title;
  final double price;
  final String type;
  final String description;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'type': type,
      'price': price,
      'image': image,
      'description': description,
    };
  }

  static Product fromJson(Map<String, dynamic> json) {
    Product product = Product(
      id: json['id'],
      title: json['title'],
      type: json['type'],
      price: json['price'],
      image: json['image'],
      description: json['description'],
    );
    print(product);
    return product;
  }

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.type,
    required this.image,
    required this.description,
  });

  Product copyWith({
    String? id,
    String? image,
    String? title,
    double? price,
    String? type,
    String? description,
  }) {
    return Product(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      price: price ?? this.price,
      type: type ?? this.type,
      description: description ?? this.description,
    );
  }
}

