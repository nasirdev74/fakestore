import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/app/cart_bloc/cart_bloc.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/domain/entities/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, required this.cartItem});

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    final product = cartItem.product;
    final cartBloc = context.read<CartBloc>();
    return InkWell(
      canRequestFocus: false,
      onTap: () => context.push('/product/${product.id}'),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                product.image,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error, color: AppColors.primary, size: 40);
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.productSans,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.productSans,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline, color: AppColors.primary),
                        onPressed: () {
                          final newQuantity = cartItem.quantity - 1;
                          if (newQuantity > 0) {
                            cartBloc.add(
                              CartUpdateQuantity(productId: cartItem.productId, quantity: newQuantity, item: cartItem),
                            );
                          } else {
                            cartBloc.add(CartRemoveItem(productId: cartItem.productId));
                          }
                        },
                      ),
                      Text(
                        cartItem.quantity.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.productSans,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline, color: AppColors.primary),
                        onPressed: () {
                          final newQuantity = cartItem.quantity + 1;
                          cartBloc.add(
                            CartUpdateQuantity(productId: cartItem.productId, quantity: newQuantity, item: cartItem),
                          );
                        },
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.delete_outline, color: Colors.red),
                        onPressed: () {
                          cartBloc.add(CartRemoveItem(productId: cartItem.productId));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
