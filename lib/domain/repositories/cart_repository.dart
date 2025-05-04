import '../entities/cart_item.dart';

abstract class CartRepository {
  /// Adds a cart item to the local storage.
  Future<void> addToCart(CartItem item);

  /// Removes a cart item by product ID from the local storage.
  Future<void> removeFromCart(int productId);

  /// Updates the quantity of a cart item in the local storage.
  Future<void> updateCartQuantity(int productId, int quantity);
}