import 'package:injectable/injectable.dart';
import 'package:app/domain/entities/cart_item.dart';
import 'package:app/data/models/product/product_model.dart';
import 'package:app/domain/repositories/cart_repository.dart';
import 'package:app/data/models/cart_item/cart_item_model.dart';
import 'package:app/data/datasources/local/cart_local_datasource.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource localDataSource;

  CartRepositoryImpl({required this.localDataSource});

  @override
  Future<void> addToCart(CartItem item) async {
    try {
      await localDataSource.addToCart(
        CartItemModel(
          productId: item.productId,
          quantity: item.quantity,
          product: ProductModel(
            id: item.product.id,
            title: item.product.title,
            price: item.product.price,
            description: item.product.description,
            category: item.product.category,
            image: item.product.image,
            rating: RatingModel(rate: item.product.rating.rate, count: item.product.rating.count),
          ),
        ),
      );
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
  Future<void> updateCartQuantity(int productId, int quantity, CartItem item) async {
    try {
      await localDataSource.updateCartQuantity(
        productId,
        quantity,
        CartItemModel(
          productId: item.productId,
          quantity: item.quantity,
          product: ProductModel(
            id: item.product.id,
            title: item.product.title,
            price: item.product.price,
            description: item.product.description,
            category: item.product.category,
            image: item.product.image,
            rating: RatingModel(rate: item.product.rating.rate, count: item.product.rating.count),
          ),
        ),
      );
    } catch (e) {
      throw Exception('Failed to update cart quantity: $e');
    }
  }

  @override
  Future<List<CartItem>> getCartItems() async {
    try {
      final models = await localDataSource.getCartItems();
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch cart items: $e');
    }
  }
}
