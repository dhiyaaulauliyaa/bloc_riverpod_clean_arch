import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/sizing_const.dart';
import '../../../../core/services/app_services.dart';
import '../../domain/entities/product.dart';

class ProductList extends HookWidget with AppMessengerService {
  ProductList({
    Key? key,
    required this.products,
    this.onRefresh,
  }) : super(key: key);

  final List<Product> products;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh?.call();
      },
      child: GridView.builder(
        itemCount: products.length,
        padding: EdgeInsets.all(SizingConst.childPadding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: SizingConst.childPadding,
          crossAxisSpacing: SizingConst.childPadding,
          childAspectRatio: 0.8,
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) {
          var product = products[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (_, c) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        product.thumbnail,
                        fit: BoxFit.cover,
                        frameBuilder: (_, child, __, wasSynchronouslyLoaded) {
                          return FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              height: c.maxHeight,
                              width: c.maxWidth,
                              child: child,
                            ),
                          );
                        },
                        loadingBuilder: (_, child, progress) {
                          return AnimatedSwitcher(
                            duration: const Duration(milliseconds: 400),
                            child: progress == null
                                ? child
                                : Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                    ),
                                    child: const CircularProgressIndicator(
                                      color: Colors.tealAccent,
                                    ),
                                  ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: SizingConst.defaultPadding / 2),
              Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  letterSpacing: -0.5,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              Text(
                '\$${product.price}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
