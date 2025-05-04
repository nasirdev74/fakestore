import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/network_exceptions.dart';

@singleton
class ApiClient {
  final dio = Dio();

  ApiClient() {
    dio.options = BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioException e, ErrorInterceptorHandler handler) {
          throw _mapDioErrorToException(e);
        },
      ),
    );
  }

  NetworkException _mapDioErrorToException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException.timeout(e.message ?? 'Request timed out');
      case DioExceptionType.badResponse:
        return NetworkException.badResponse(
          e.response?.statusCode ?? 0,
          e.response?.data?.toString() ?? 'Bad response',
        );
      case DioExceptionType.cancel:
        return NetworkException.cancelled('Request cancelled');
      default:
        return NetworkException.unknown(e.message ?? 'Unknown error');
    }
  }
}
