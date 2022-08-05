import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase.dart';
import '../../../../core/base/repository_mixin.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/injection/service_locator.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasources/product_dummy_datasource.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl with RepositoryMixin implements ProductRepository {
  final dummyDataSource = getIt<ProductDummyDataSource>();

  @override
  Future<Either<Failure, List<Product>>> getProducts(NoParams params) {
    return dummyDataSource.getProducts.call().then(
          (products) => Right(products),
        );
  }
}
