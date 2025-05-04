import 'package:app/domain/entities/product.dart';
import 'package:app/domain/entities/category.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts({int? limit, String? sort});

  Future<Product> getProductDetails(int id);

  Future<List<Category>> getCategories();

  Future<List<Product>> getProductsByCategory(String category, {String? sort});
}
