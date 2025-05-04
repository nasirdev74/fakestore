import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<List<Product>> call({int? limit, String? sort}) async {
    return await repository.getProducts(limit: limit, sort: sort);
  }
}