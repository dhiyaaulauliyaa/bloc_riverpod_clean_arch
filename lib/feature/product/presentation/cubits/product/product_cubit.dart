import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/base_usecase.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../../core/injection/service_locator.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/usecases/get_products.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@Injectable()
class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductState());

  void getProducts() async {
    /* Start loading */
    emit(state.copyWith(status: ProductCubitStatus.loading));

    /* Call usecase */
    var usecase = getIt<GetProducts>();
    var result = await usecase.call(NoParams());

    /* Fold result */
    result.fold(
      (l) => emit(
        state.copyWith(
          status: ProductCubitStatus.failed,
          failure: l,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: ProductCubitStatus.success,
          data: r,
        ),
      ),
    );
  }
}
