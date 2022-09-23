import 'DatabaseHelper.dart';

class Products {
  int? id;
  String? brand;
  String? productName;
  String? productStyle;
  String? produceDate;
  String? openDate;
  String? outDate;
  String? image;

  Products(this.id, this.brand, this.productName, this.productStyle,
      this.produceDate, this.openDate, this.outDate, this.image);

  Products.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseHelper.columnId];
    brand = map[DatabaseHelper.columnBrand];
    productName = map[DatabaseHelper.columnProductName];
    productStyle = map[DatabaseHelper.columnProductStyle];
    produceDate = map[DatabaseHelper.columnProduceDate];
    openDate = map[DatabaseHelper.columnOpenDate];
    outDate = map[DatabaseHelper.columnOutDate];
    image = map[DatabaseHelper.columnImage];
  }

  get length => null;

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnBrand: brand,
      DatabaseHelper.columnProductName: productName,
      DatabaseHelper.columnProductStyle: productStyle,
      DatabaseHelper.columnProduceDate: produceDate,
      DatabaseHelper.columnOpenDate: openDate,
      DatabaseHelper.columnOutDate: outDate,
      DatabaseHelper.columnImage: image
    };
  }

  @override
  String toString() {
    return 'Product{id: $id, brand: $brand, name: $productName, style: $productStyle}';
  }
}
