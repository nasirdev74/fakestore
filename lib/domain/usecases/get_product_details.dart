import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProductDetails {
  final ProductRepository repository;

  GetProductDetails(this.repository);

  Future<Product> call(int id) async {
    return await repository.getProductDetails(id);
  }
}