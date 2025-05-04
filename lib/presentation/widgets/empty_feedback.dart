import 'package:flutter/material.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:app/core/constants/app_colors.dart';

class EmptyFeedback extends StatelessWidget {
  const EmptyFeedback({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.productSans,
        ),
      ),
    );
  }
}
