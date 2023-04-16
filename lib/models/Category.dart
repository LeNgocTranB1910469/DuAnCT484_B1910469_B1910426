import 'package:flutter/animation.dart';

class Category {
  final String image, title;
  final String type;
  Category({
    required this.image,
    required this.title,
    required this.type,
  });

  get price => null;
}

List<Category> show_categories = [
  Category(
    image: "assets/images/ao.jpg",
    title: "Áo thun",
    type: "Aothun",
  ),
  Category(
    image: "assets/images/quan.jpg",
    title: "Quần",
    type: "Quan",
  ),
  Category(
    image: "assets/images/vay.jpg",
    title: "Váy",
    type: "Vay",
  ),
];
