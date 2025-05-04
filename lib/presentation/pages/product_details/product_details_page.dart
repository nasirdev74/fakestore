import 'package:app/di/injector.dart';
import 'package:flutter/material.dart';
import 'cubit/product_details_cubit.dart';
import 'package:app/core/utils/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/presentation/widgets/cart_control.dart';
import 'package:app/presentation/widgets/empty_feedback.dart';
import 'package:app/presentation/widgets/error_feedback.dart';
import 'package:app/presentation/widgets/product_details.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.productId});

  final int productId;
  static const route = '/product/:id';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductDetailsCubit>()..fetchProductDetails(productId),
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primary,
          title: const Text('Product Details'),
        ),
        body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            if (state.status.isInit) {
              return const SizedBox();
            } else if (state.status.isLoading) {
              return const Center(child: CircularProgressIndicator(color: AppColors.primary));
            } else if (state.status.isSuccess && state.productDetails != null) {
              return _buildProductDetails(product: state.productDetails!);
            } else if (state.status.isFailed) {
              return ErrorFeedback(
                error: state.error,
                onRetry: () => context.read<ProductDetailsCubit>().fetchProductDetails(productId),
              );
            }
            return EmptyFeedback(message: "Product details not found");
          },
        ),
      ),
    );
  }

  Widget _buildProductDetails({required Product product}) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailsWidget(product: product),
          const SizedBox(height: 20),
          CartControlWidget(product: product),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
