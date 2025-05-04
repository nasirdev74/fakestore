import '../../domain/entities/cart_item.dart';
import '../../domain/repositories/cart_repository.dart';
import '../datasources/local/cart_local_datasource.dart';
import '../models/cart_item_model.dart';

class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource localDataSource;

  CartRepositoryImpl({required this.localDataSource});

  @override
  Future<void> addToCart(CartItem item) async {
    try {
      await localDataSource.addToCart(CartItemModel(
        productId: item.productId,
        quantity: item.quantity,
      ));
    } catch (e) {
      throw Exception('Failed to add to cart: $e');
    }
  }

  @override
  Future<void> removeFromCart(int productId) async {
    try {
      await localDataSource.removeFromCart(productId);
    } catch (e) {
      throw Exception('Failed to remove from cart: $e');
    }
  }

  @override
  Future<void> updateCartQuantity(int productId, int quantity) async {
    try {
      await localDataSource.updateCartQuantity(productId, quantity);
    } catch (e) {
      throw Exception('Failed to update cart quantity: $e');
    }
  }
}