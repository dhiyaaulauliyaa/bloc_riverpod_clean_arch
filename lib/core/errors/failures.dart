import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    this.code = '',
    this.error,
  });

  final String message;
  final String code;
  final DioError? error;

  @override
  List<Object?> get props => <Object?>[message, code, error];
}

class NetworkFailure extends Failure {
  const NetworkFailure(
      {String message = 'Oops! looks like you have connection problem'})
      : super(message: message);
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String message,
    required String code,
  }) : super(
          message: message,
          code: code,
        );
}

class ClientFailure extends Failure {
  const ClientFailure({
    required String message,
    String code = 'CF0',
  }) : super(
          message: message,
          code: code,
        );
}
