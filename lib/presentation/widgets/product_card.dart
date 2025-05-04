import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:app/domain/entities/product.dart';
import 'package:app/core/constants/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      canRequestFocus: false,
      borderRadius: BorderRadius.circular(8),
      onTap: () => context.push('/product/${product.id}'),
      child: Card(
        elevation: 1,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error, color: AppColors.primary);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.productSans,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.productSans,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow[700], size: 16),
                  const SizedBox(width: 4),
                  Text(
                    '${product.rating.rate.toStringAsFixed(1)} (${product.rating.count})',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontFamily: FontFamily.productSans,
                    ),
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
