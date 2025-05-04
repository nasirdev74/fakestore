import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:app/core/constants/app_colors.dart';

class ErrorFeedback extends StatelessWidget {
  const ErrorFeedback({super.key, required this.error, required this.onRetry});

  final String? error;
  final void Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Error: $error',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.productSans,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => onRetry.call(),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: Colors.white),
              child: Text(
                "Retry",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, fontFamily: FontFamily.productSans),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
