import 'package:injectable/injectable.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/domain/entities/category.dart';
import 'package:app/domain/repositories/product_repository.dart';
import 'package:app/data/datasources/remote/product_remote_datasource.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Product>> getProducts({int? limit, String? sort}) async {
    try {
      final models = await remoteDataSource.getProducts(limit: limit, sort: sort);
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }

  @override
  Future<Product> getProductDetails(int id) async {
    try {
      final model = await remoteDataSource.getProductDetails(id);
      return model.toEntity();
    } catch (e) {
      throw Exception('Failed to fetch product details: $e');
    }
  }

  @override
  Future<List<Category>> getCategories() async {
    try {
      final models = await remoteDataSource.getCategories();
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch categories: $e');
    }
  }

  @override
  Future<List<Product>> getProductsByCategory(String category, {String? sort}) async {
    try {
      final models = await remoteDataSource.getProductsByCategory(category, sort: sort);
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch products by category: $e');
    }
  }
}
