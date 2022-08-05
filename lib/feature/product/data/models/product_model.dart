import '../../domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required String title,
    required double price,
    required String thumbnail,
  }) : super(
          title: title,
          price: price,
          thumbnail: thumbnail,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      price: json['price'] * 1.0,
      thumbnail: json['thumbnail'],
    );
  }

  static List<ProductModel> fromJsonList(
    List<dynamic> jsonList,
  ) {
    return jsonList.map((json) => ProductModel.fromJson(json)).toList();
  }
}
