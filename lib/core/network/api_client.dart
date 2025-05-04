import 'package:dio/dio.dart';
import '../constants/api_endpoints.dart';
import '../errors/network_exceptions.dart';

class ApiClient {
  final Dio dio;

  ApiClient()
      : dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  ) {
    dio.interceptors.add(InterceptorsWrapper(
      onError: (DioException e, ErrorInterceptorHandler handler) {
        throw _mapDioErrorToException(e);
      },
    ));
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