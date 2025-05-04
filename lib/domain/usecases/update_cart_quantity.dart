import '../repositories/cart_repository.dart';

class UpdateCartQuantityUseCase {
  final CartRepository repository;

  UpdateCartQuantityUseCase(this.repository);

  Future<void> call(int productId, int quantity) async {
    await repository.updateCartQuantity(productId, quantity);
  }
}