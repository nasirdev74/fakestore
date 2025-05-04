import 'package:hive/hive.dart';
import '../../models/cart_item_model.dart';

abstract class CartLocalDataSource {
  Future<void> addToCart(CartItemModel item);
  Future<void> removeFromCart(int productId);
  Future<void> updateCartQuantity(int productId, int quantity);
  Future<List<CartItemModel>> getCartItems();
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final Box<CartItemModel> cartBox;

  CartLocalDataSourceImpl({required this.cartBox});

  @override
  Future<void> addToCart(CartItemModel item) async {
    await cartBox.put(item.productId, item);
  }

  @override
  Future<void> removeFromCart(int productId) async {
    await cartBox.delete(productId);
  }

  @override
  Future<void> updateCartQuantity(int productId, int quantity) async {
    final item = cartBox.get(productId);
    if (item != null) {
      await cartBox.put(productId, CartItemModel(productId: productId, quantity: quantity));
    }
  }

  @override
  Future<List<CartItemModel>> getCartItems() async {
    return cartBox.values.toList();
  }
}