import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:app/domain/entities/category.dart';
import 'package:app/core/constants/app_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => context.push('/category/${category.name}'),
      child: Card(
        elevation: 1,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            category.name,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.productSans,
            ),
          ),
        ),
      ),
    );
  }
}
