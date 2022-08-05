import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/network_module.dart';
import 'datasources/product_remote_datasource.dart';
import 'repositories/product_repository_impl.dart';

final productRemoteDataSourceProvider = Provider(
  (ref) => RiverpodProductRemoteDataSourceImpl(
    ref.watch(networkModuleProvider),
  ),
);

final productRepositoryProvider = Provider(
  (ref) => RiverpodProductRepositoryImpl(
    ref.watch(productRemoteDataSourceProvider),
  ),
);
