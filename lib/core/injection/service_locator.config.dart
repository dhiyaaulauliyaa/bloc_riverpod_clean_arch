// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker_tv/data_connection_checker.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/product/data/datasources/product_dummy_datasource.dart'
    as _i10;
import '../../feature/product/data/datasources/product_remote_datasource.dart'
    as _i11;
import '../../feature/product/data/repositories/product_repository_impl.dart'
    as _i13;
import '../../feature/product/domain/repositories/product_repository.dart'
    as _i12;
import '../../feature/product/domain/usecases/get_products.dart' as _i5;
import '../../feature/product/presentation/cubits/product/product_cubit.dart'
    as _i9;
import '../network/network_info.dart' as _i7;
import '../network/network_module.dart' as _i8;
import '../services/messenger.dart' as _i6;
import 'register_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.DataConnectionChecker>(
      () => registerModule.dataConnectionChecker);
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i5.GetProducts>(() => _i5.GetProducts());
  gh.lazySingleton<_i6.MessengerService>(() => _i6.MessengerService());
  gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl());
  gh.lazySingleton<_i8.NetworkModule>(() => _i8.NetworkModuleImpl());
  gh.factory<_i9.ProductCubit>(() => _i9.ProductCubit());
  gh.lazySingleton<_i10.ProductDummyDataSource>(
      () => _i10.ProductDummyDataSourceImpl());
  gh.lazySingleton<_i11.ProductRemoteDataSource>(
      () => _i11.ProductRemoteDataSourceImpl());
  gh.lazySingleton<_i12.ProductRepository>(() => _i13.ProductRepositoryImpl());
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}
