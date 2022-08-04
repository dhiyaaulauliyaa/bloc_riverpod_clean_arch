import 'package:dartz/dartz.dart';

import '../errors/exceptions.dart';
import '../errors/failures.dart';
import '../injection/service_locator.dart';
import '../network/network_info.dart';

mixin RepositoryMixin {
  final networkInfo = getIt<NetworkInfo>();

  Future<Either<Failure, T>> callRemoteDataSource<T>(
    Future<T> Function() call, {
    Future<void> Function(T)? syncToLocal,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        T result = await call();

        await syncToLocal?.call(result);

        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message, code: e.code));
      } on NetworkException catch (e) {
        return Left(NetworkFailure(message: e.message));
      } catch (e) {
        rethrow;
      }
    }

    return const Left(NetworkFailure());
  }
}
