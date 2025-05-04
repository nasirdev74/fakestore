import 'package:injectable/injectable.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/domain/repositories/product_repository.dart';

@injectable
class ProductUseCase {
  final ProductRepository repository;

  ProductUseCase(this.repository);

  Future<List<Product>> getProducts({int? limit, String? sort}) async {
    return await repository.getProducts(limit: limit, sort: sort);
  }

  Future<Product> getProductDetails(int id) async {
    return await repository.getProductDetails(id);
  }

  Future<List<Product>> getProductsByCategory(String category, {String? sort}) async {
    return await repository.getProductsByCategory(category, sort: sort);
  }
}
