import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/core/constants/app_colors.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            product.image,
            height: 250,
            fit: BoxFit.cover,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, color: AppColors.primary, size: 100);
            },
          ),
        ),
        const SizedBox(height: 16),
        Text(
          product.title,
          style: const TextStyle(
            fontSize: 24,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
            fontFamily: FontFamily.productSans,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '\$${product.price.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 20,
            color: AppColors.primary,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.productSans,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow[700], size: 20),
            const SizedBox(width: 4),
            Text(
              '${product.rating.rate.toStringAsFixed(1)} (${product.rating.count} reviews)',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontFamily: FontFamily.productSans,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          product.description,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
            fontFamily: FontFamily.productSans,
          ),
        ),
      ],
    );
  }
}
