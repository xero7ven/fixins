import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/recipe_detail.dart';

class RecipeInsights extends StatelessWidget {
  const RecipeInsights({
    super.key,
    required this.recipe,
  });

  final RecipeDetail recipe;

  @override
  Widget build(BuildContext context) {
    final expiringItems = recipe.expiringIngredients.join(', ');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: BorderRadius.circular(AppRadius.xl),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.auto_awesome,
                      color: AppColors.primaryDark,
                      size: 20,
                    ),
                    SizedBox(width: AppSpacing.sm),
                    Text(
                      'USES YOUR SOON-TO-EXPIRE',
                      style: TextStyle(
                        color: AppColors.primaryDark,
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  '$expiringItems — cook before they go.',
                  style: const TextStyle(
                    fontSize: 17,
                    height: 1.35,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F7F0),
              borderRadius: BorderRadius.circular(AppRadius.xl),
            ),
            child: Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 17,
                  height: 1.35,
                ),
                children: [
                  const TextSpan(
                    text: 'Prevents about ',
                  ),
                  TextSpan(
                    text:
                        '\$${recipe.foodWasteSavings.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const TextSpan(
                    text: ' in food waste tonight.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}