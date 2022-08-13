import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';

class Products {
  int? id;
  String? brand;
  String? product_name;
  String? product_style;
  Products(this.id, this.brand, this.product_name, this.product_style);

  Products.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    brand = map['brand'];
    product_name = map['product_name'];
    product_style = map['product_style'];
  }

  get length => null;

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnBrand: brand,
      DatabaseHelper.columnProduct_Name: product_name,
      DatabaseHelper.columnProduct_Style: product_style
    };
  }
}
