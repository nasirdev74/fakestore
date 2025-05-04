import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProductsByCategory {
  final ProductRepository repository;

  GetProductsByCategory(this.repository);

  Future<List<Product>> call(String category, {String? sort}) async {
    return await repository.getProductsByCategory(category, sort: sort);
  }
}