import 'package:flutter/material.dart';
import 'package:app/core/utils/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/app/cart_bloc/cart_bloc.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/domain/entities/cart_item.dart';
import 'package:app/presentation/widgets/cart_item.dart';
import 'package:app/presentation/widgets/error_feedback.dart';
import 'package:app/presentation/widgets/empty_feedback.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  static const route = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: AppColors.primary,
        title: const Text('Your Cart'),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return const Center(child: CircularProgressIndicator(color: AppColors.primary));
          } else if (state.status.isSuccess && state.cartItems.isNotEmpty) {
            return _buildCartList(context, state.cartItems);
          } else if (state.status.isSuccess && state.cartItems.isEmpty) {
            return EmptyFeedback(message: "Your cart is empty");
          } else if (state.status.isFailed) {
            return ErrorFeedback(
              error: state.error,
              onRetry: () => context.read<CartBloc>().add(const CartFetchItems()),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildCartList(BuildContext context, List<CartItem> cartItems) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        final cartItem = cartItems[index];
        return CartItemWidget(cartItem: cartItem);
      },
    );
  }
}
