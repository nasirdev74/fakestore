import 'package:dio/dio.dart';
import '../../models/product_model.dart';
import '../../models/category_model.dart';
import '../../../core/constants/api_endpoints.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts({int? limit, String? sort});
  Future<ProductModel> getProductDetails(int id);
  Future<List<CategoryModel>> getCategories();
  Future<List<ProductModel>> getProductsByCategory(String category, {String? sort});
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<ProductModel>> getProducts({int? limit, String? sort}) async {
    final queryParameters = <String, dynamic>{};
    if (limit != null) queryParameters['limit'] = limit;
    if (sort != null) queryParameters['sort'] = sort;

    final response = await dio.get(
      ApiEndpoints.products,
      queryParameters: queryParameters,
    );

    if (response.statusCode == 200) {
      return (response.data as List).map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }

  @override
  Future<ProductModel> getProductDetails(int id) async {
    final response = await dio.get('${ApiEndpoints.products}/$id');

    if (response.statusCode == 200) {
      return ProductModel.fromJson(response.data);
    } else {
      throw Exception('Failed to fetch product details');
    }
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await dio.get(ApiEndpoints.categories);

    if (response.statusCode == 200) {
      return (response.data as List).map((name) => CategoryModel(name: name)).toList();
    } else {
      throw Exception('Failed to fetch categories');
    }
  }

  @override
  Future<List<ProductModel>> getProductsByCategory(String category, {String? sort}) async {
    final queryParameters = <String, dynamic>{};
    if (sort != null) queryParameters['sort'] = sort;

    final response = await dio.get(
      '${ApiEndpoints.category}/$category',
      queryParameters: queryParameters,
    );

    if (response.statusCode == 200) {
      return (response.data as List).map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch products by category');
    }
  }
}