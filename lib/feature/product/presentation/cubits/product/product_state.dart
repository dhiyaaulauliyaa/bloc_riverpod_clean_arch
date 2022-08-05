part of 'product_cubit.dart';

enum ProductCubitStatus { initial, loading, success, failed }

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(ProductCubitStatus.initial) ProductCubitStatus status,
    List<Product>? data,
    Failure? failure,
  }) = _ProductState;
}
