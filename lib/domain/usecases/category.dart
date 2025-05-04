import 'package:injectable/injectable.dart';
import 'package:app/domain/entities/category.dart';
import 'package:app/domain/repositories/product_repository.dart';

@injectable
class CategoryUseCase {
  final ProductRepository repository;

  CategoryUseCase(this.repository);

  Future<List<Category>> getCategories() async {
    return await repository.getCategories();
  }
}
