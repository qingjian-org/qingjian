import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';

class Products {
  int? id;
  String? brand;
  String? product_name;
  String? product_style;
  String? produceDate;
  String? openDate;
  String? outDate;

  Products(this.id, this.brand, this.product_name, this.product_style,
      this.produceDate, this.openDate, this.outDate);

  Products.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    brand = map['brand'];
    product_name = map['product_name'];
    product_style = map['product_style'];
    produceDate = map['produceDate'];
    openDate = map['openDate'];
    outDate = map['outDate'];
  }

  get length => null;

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnBrand: brand,
      DatabaseHelper.columnProduct_Name: product_name,
      DatabaseHelper.columnProduct_Style: product_style,
      DatabaseHelper.columnProduceDate: produceDate,
      DatabaseHelper.columnOpenDate: openDate,
      DatabaseHelper.columnOutDate: outDate
    };
  }
}
