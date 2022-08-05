import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String title;
  final double price;
  final String thumbnail;

  const Product({
    required this.title,
    required this.price,
    required this.thumbnail,
  });

  @override
  List<Object?> get props => [title, price, thumbnail];
}
