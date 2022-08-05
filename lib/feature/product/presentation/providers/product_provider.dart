import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/base/base_state.dart';
import '../../../../core/base/base_usecase.dart';
import '../../domain/entities/product.dart';
import '../../domain/product_domain_provider.dart';
import '../../domain/usecases/get_products.dart';

final productStateNotifierProvider = StateNotifierProvider.autoDispose<
    ProductViewModel, BaseState<List<Product>>>(
  (ref) => ProductViewModel(
    ref.watch(getProductsProvider),
  ),
);

class ProductViewModel extends StateNotifier<BaseState<List<Product>>> {
  final RiverpodGetProducts getProductsUseCase;

  ProductViewModel(
    this.getProductsUseCase,
  ) : super(const BaseState.init()) {
    getProducts();
  }

  void getProducts() async {
    /* Start loading */
    state = const BaseState.loading();

    /* Call usecase */
    var result = await getProductsUseCase.call(NoParams());

    /* Fold result */
    result.fold(
      (l) => state = BaseState.error(l),
      (r) => state = BaseState.success(r),
    );
  }
}
