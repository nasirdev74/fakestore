import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/app/cart_bloc/cart_bloc.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/core/constants/app_strings.dart';

class ProductsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductsAppBar({super.key});

  static const height = 65.0;

  @override
  Size get preferredSize => const Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        AppStrings.appName,
        style: TextStyle(
          fontSize: 24,
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.productSans,
        ),
      ),
      actions: [
        IconButton(
          icon: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              final itemCount = state.cartItems.length;
              return Stack(
                children: [
                  const Icon(Icons.shopping_cart_outlined, color: AppColors.primary, size: 30),
                  if (itemCount > 0)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                        child: Text(
                          itemCount.toString(),
                          style: const TextStyle(
                            fontFamily: FontFamily.productSans,
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
          tooltip: 'View Cart',
          onPressed: () => context.push('/cart'),
        ),
      ],
    );
  }
}
