import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase.dart';
import '../../../../core/base/repository_mixin.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/injection/service_locator.dart';
import '../../../../core/utils/log.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasources/product_dummy_datasource.dart';
import '../datasources/product_remote_datasource.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl with RepositoryMixin implements ProductRepository {
  final remoteDataSource = getIt<ProductRemoteDataSource>();
  final dummyDataSource = getIt<ProductDummyDataSource>();

  @override
  Future<Either<Failure, List<Product>>> getProducts(NoParams params) async {
    // return dummyDataSource.getProducts.call().then(
    //       (products) => Right(products),
    //     );

    try {
      var result = await remoteDataSource.getProducts();

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, code: e.code));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      /* Do some error logging */
      Log.error('Unhandled error: $e');

      return const Left(ClientFailure(message: 'Something went wrong'));
    }
  }
}
