// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker_tv/data_connection_checker.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../network/network_info.dart' as _i6;
import '../network/network_module.dart' as _i7;
import '../services/messenger.dart' as _i5;
import 'register_module.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.DataConnectionChecker>(
      () => registerModule.dataConnectionChecker);
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i5.MessengerService>(() => _i5.MessengerService());
  gh.lazySingleton<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl());
  gh.lazySingleton<_i7.NetworkModule>(() => _i7.NetworkModuleImpl());
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
