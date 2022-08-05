import 'package:flutter/material.dart';

class ProductListLoading extends StatelessWidget {
  const ProductListLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
