import 'package:equatable/equatable.dart';
import 'package:app/domain/entities/product.dart';

class CartItem extends Equatable {
  final int productId;
  final int quantity;
  final Product product;

  const CartItem({required this.productId, required this.quantity, required this.product});

  @override
  List<Object?> get props => [productId, quantity, product];
}
