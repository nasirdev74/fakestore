import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:app/data/models/cart_item/cart_item_model.dart';

abstract class CartLocalDataSource {
  Future<void> addToCart(CartItemModel item);

  Future<void> removeFromCart(int productId);

  Future<void> updateCartQuantity(int productId, int quantity, CartItemModel item);

  Future<List<CartItemModel>> getCartItems();
}

@Injectable(as: CartLocalDataSource)
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
  Future<void> updateCartQuantity(int productId, int quantity, CartItemModel item) async {
    final existingItem = cartBox.get(productId);
    if (existingItem != null) {
      await cartBox.put(
        productId,
        CartItemModel(productId: productId, quantity: quantity, product: item.product),
      );
    }
  }

  @override
  Future<List<CartItemModel>> getCartItems() async {
    return cartBox.values.toList();
  }
}
