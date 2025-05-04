import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/app/cart_bloc/cart_bloc.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/domain/entities/cart_item.dart';
import 'package:app/core/constants/app_colors.dart';

class CartControlWidget extends StatefulWidget {
  const CartControlWidget({super.key, required this.product});

  final Product product;

  @override
  State<CartControlWidget> createState() => _CartControlWidgetState();
}

class _CartControlWidgetState extends State<CartControlWidget> {
  int _quantity = 1;
  bool _isAdded = false;
  bool _isInitialized = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final cartItem = state.cartItems.firstWhere(
          (item) => item.productId == widget.product.id,
          orElse: () => CartItem(productId: widget.product.id, quantity: 0, product: widget.product),
        );

        if (!_isInitialized && cartItem.quantity > 0) {
          _quantity = cartItem.quantity;
          _isAdded = true;
          _isInitialized = true;
        }

        return Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove_circle_outline, color: AppColors.primary),
              onPressed:
                  _quantity > 0
                      ? () => _handleDecrement()
                      : (cartItem.quantity > 0 ? () => _handleRemove(context) : null),
            ),
            Text(
              _quantity.toString(),
              key: ValueKey(_quantity),
              style: const TextStyle(
                fontSize: 18,
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.productSans,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add_circle_outline, color: AppColors.primary),
              onPressed: () => _handleIncrement(),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => _handleAddToCart(context, cartItem),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                _isAdded ? 'Added' : 'Add to Cart',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: FontFamily.productSans),
              ),
            ),
          ],
        );
      },
    );
  }

  void _handleIncrement() {
    setState(() {
      _quantity++;
      _isAdded = false;
    });
  }

  void _handleDecrement() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
        _isAdded = false;
      }
    });
  }

  void _handleRemove(BuildContext context) {
    context.read<CartBloc>().add(CartRemoveItem(productId: widget.product.id));
    setState(() {
      _quantity = 1;
      _isAdded = false;
      _isInitialized = false;
    });
  }

  void _handleAddToCart(BuildContext context, CartItem cartItem) {
    if (_quantity == 0) {
      if (cartItem.quantity > 0) {
        context.read<CartBloc>().add(CartRemoveItem(productId: widget.product.id));
        setState(() {
          _isAdded = false;
          _isInitialized = false;
        });
      }
      return;
    }

    final newCartItem = CartItem(productId: widget.product.id, quantity: _quantity, product: widget.product);
    context.read<CartBloc>().add(
      cartItem.quantity == 0
          ? CartAddItem(item: newCartItem)
          : CartUpdateQuantity(productId: widget.product.id, quantity: _quantity, item: newCartItem),
    );
    setState(() {
      _isAdded = true;
      _isInitialized = true;
    });
  }
}
