class NetworkException implements Exception {
  NetworkException({
    this.message = 'Oops! looks like you have connection problem',
  });

  final String message;
}

class ServerException implements Exception {
  ServerException({
    String? message,
    String? code,
  })  : message =
            message ?? 'Oops! Server error, please try again later. $code',
        code = code ?? '';

  final String message;
  final String code;
}
