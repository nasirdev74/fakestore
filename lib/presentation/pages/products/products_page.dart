import 'products_app_bar.dart';
import 'cubit/products_cubit.dart';
import 'package:app/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:app/core/utils/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/presentation/widgets/product_card.dart';
import 'package:app/presentation/widgets/empty_feedback.dart';
import 'package:app/presentation/widgets/error_feedback.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductsCubit>()..fetchProducts(limit: 100),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const ProductsAppBar(),
        body: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state.status.isLoading) {
              return const Center(child: CircularProgressIndicator(color: AppColors.primary));
            } else if (state.status.isSuccess && state.products.isNotEmpty) {
              return GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: state.products[index]);
                },
              );
            } else if (state.status.isSuccess && state.products.isEmpty) {
              return EmptyFeedback(message: "No products available");
            } else if (state.status.isFailed) {
              return ErrorFeedback(
                error: state.error,
                onRetry: () => context.read<ProductsCubit>().fetchProducts(limit: 100),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
