import '../entities/product.dart';
import '../entities/category.dart';

abstract class ProductRepository {
  /// Fetches a list of products with optional limit and sort parameters.
  Future<List<Product>> getProducts({int? limit, String? sort});

  /// Fetches details of a specific product by ID.
  Future<Product> getProductDetails(int id);

  /// Fetches all product categories.
  Future<List<Category>> getCategories();

  /// Fetches products for a specific category with optional sort parameter.
  Future<List<Product>> getProductsByCategory(String category, {String? sort});
}