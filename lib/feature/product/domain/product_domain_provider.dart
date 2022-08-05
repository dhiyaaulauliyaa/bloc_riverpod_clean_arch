import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/product_data_provider.dart';
import 'usecases/get_products.dart';

final getProductsProvider = Provider(
  (ref) => RiverpodGetProducts(ref.watch(productRepositoryProvider)),
);
