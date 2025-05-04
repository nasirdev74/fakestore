import 'package:app/domain/entities/cart_item.dart';

abstract class CartRepository {
  Future<void> addToCart(CartItem item);

  Future<void> removeFromCart(int productId);

  Future<void> updateCartQuantity(int productId, int quantity, CartItem item);

  Future<List<CartItem>> getCartItems();
}
