import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String modelNo;
  final String price;
  final String condition;
  final String color;

  Product({
    @required this.id,
    @required this.title,
    @required this.modelNo,
    @required this.price,
    @required this.color,
    @required this.condition,
  });

  List<Product> _items = [
    Product(id: DateTime.now().toString(), title: 'Audi', modelNo: 'X12', price: '60000', color: 'grey', condition: 'good',),
  ];
}
