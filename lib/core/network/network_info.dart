import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

import '../injection/service_locator.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final dataConnectionChecker = getIt<DataConnectionChecker>();

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}
