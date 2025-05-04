import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/app/cart_bloc/cart_bloc.dart';
import 'package:app/core/constants/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.currentPath, required this.onTap});

  final String currentPath;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final currentIndex = _getCurrentIndex(currentPath);

    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.black54,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(
        fontFamily: FontFamily.productSans,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: FontFamily.productSans,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.grid_view_outlined),
          activeIcon: Icon(Icons.grid_view),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Stack(
                children: [
                  const Icon(Icons.shopping_cart_outlined),
                  if (state.cartItems.isNotEmpty)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                        child: Text(
                          '${state.cartItems.length}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.productSans,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
          activeIcon: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Stack(
                children: [
                  const Icon(Icons.shopping_cart),
                  if (state.cartItems.isNotEmpty)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                        child: Text(
                          '${state.cartItems.length}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.productSans,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
          label: 'Cart',
        ),
      ],
    );
  }

  int _getCurrentIndex(String path) {
    switch (path) {
      case '/home':
        return 0;
      case '/categories':
        return 1;
      case '/cart':
        return 2;
      default:
        return 0;
    }
  }
}
