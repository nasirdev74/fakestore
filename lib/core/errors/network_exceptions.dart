class NetworkException implements Exception {
  final String message;
  final int? statusCode;

  NetworkException(this.message, {this.statusCode});

  factory NetworkException.timeout(String message) => NetworkException(message);

  factory NetworkException.badResponse(int statusCode, String message) =>
      NetworkException(message, statusCode: statusCode);

  factory NetworkException.cancelled(String message) => NetworkException(message);

  factory NetworkException.unknown(String message) => NetworkException(message);

  @override
  String toString() =>
      'NetworkException: $message${statusCode != null ? ' (Status: $statusCode)' : ''}';
}
