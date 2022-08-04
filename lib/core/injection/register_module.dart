import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  /* ------------------ Network Module ------------------ */
  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();
}
