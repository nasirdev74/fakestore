import 'package:injectable/injectable.dart';
import 'package:app/domain/entities/cart_item.dart';
import 'package:app/domain/repositories/cart_repository.dart';

@injectable
class CartUseCase {
  final CartRepository repository;

  CartUseCase(this.repository);

  Future<void> addToCart(CartItem item) async {
    await repository.addToCart(item);
  }

  Future<void> removeFromCart(int productId) async {
    await repository.removeFromCart(productId);
  }

  Future<void> updateCartQuantity(int productId, int quantity, CartItem item) async {
    await repository.updateCartQuantity(productId, quantity, item);
  }

  Future<List<CartItem>> getCartItems() async {
    return await repository.getCartItems();
  }
}
