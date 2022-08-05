import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/injection/service_locator.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

@LazySingleton()
class GetProducts implements UseCase<List<Product>, NoParams> {
  final repository = getIt<ProductRepository>();

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return repository.getProducts(params);
  }
}

class RiverpodGetProducts implements UseCase<List<Product>, NoParams> {
  RiverpodGetProducts(this.repository);

  final ProductRepository repository;

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return repository.getProducts(params);
  }
}
