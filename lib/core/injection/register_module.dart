import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../network/network_client.dart';

@module
abstract class RegisterModule {
  /* ------------------ Network Module ------------------ */
  @lazySingleton
  Dio get dio => NetworkClient.init();
  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();
}
