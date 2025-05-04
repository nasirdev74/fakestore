import 'cubit/categories_cubit.dart';
import 'package:app/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:app/core/utils/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/core/constants/app_colors.dart';
import 'package:app/presentation/widgets/category_tile.dart';
import 'package:app/presentation/widgets/empty_feedback.dart';
import 'package:app/presentation/widgets/error_feedback.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  static const route = '/categories';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoriesCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primary,
          title: const Text('Categories'),
        ),
        body: RefreshIndicator(
          color: AppColors.primary,
          onRefresh: () => context.read<CategoriesCubit>().fetchCategories(),
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (context, state) {
              if (state.status.isLoading) {
                return const Center(child: CircularProgressIndicator(color: AppColors.primary));
              } else if (state.status.isSuccess) {
                if (state.categories.isEmpty) {
                  return EmptyFeedback(message: "No Categories Found");
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: state.categories.length,
                  itemBuilder: (context, index) {
                    final category = state.categories[index];
                    return CategoryTile(category: category);
                  },
                );
              } else if (state.status.isFailed) {
                return ErrorFeedback(
                  error: state.error,
                  onRetry: () => context.read<CategoriesCubit>().fetchCategories(),
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
