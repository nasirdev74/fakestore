import 'package:app/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'cubit/category_products_cubit.dart';
import 'package:app/core/utils/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/presentation/widgets/product_card.dart';
import 'package:app/presentation/widgets/empty_feedback.dart';
import 'package:app/presentation/widgets/error_feedback.dart';

class CategoryProductsPage extends StatelessWidget {
  const CategoryProductsPage({super.key, required this.categoryName});

  final String categoryName;

  static const route = '/category/:name';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoryProductsCubit>()..fetchProducts(categoryName),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primary,
          title: Text(categoryName),
        ),
        body: BlocBuilder<CategoryProductsCubit, CategoryProductsState>(
          builder: (context, state) {
            if (state.status.isInit) {
              return const Center(
                child: Text(
                  'Loading products...',
                  style: TextStyle(
                    fontFamily: FontFamily.productSans,
                    color: AppColors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            } else if (state.status.isLoading) {
              return const Center(child: CircularProgressIndicator(color: AppColors.primary));
            } else if (state.status.isSuccess) {
              if (state.products.isEmpty) {
                return EmptyFeedback(message: "No products in this category");
              }

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
            } else if (state.status.isFailed) {
              return ErrorFeedback(
                error: state.error,
                onRetry: () => context.read<CategoryProductsCubit>().fetchProducts(categoryName),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
