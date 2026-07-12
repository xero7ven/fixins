import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/recipe_ingredient.dart';

class IngredientRow extends StatelessWidget {
  const IngredientRow({
    super.key,
    required this.ingredient,
  });

  final RecipeIngredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.sm,
      ),
      child: Row(
        children: [
          Icon(
            ingredient.inPantry
                ? Icons.check_circle
                : Icons.shopping_cart_outlined,
            color: ingredient.inPantry
                ? AppColors.primary
                : Colors.orange,
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: Text(
              ingredient.name,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Text(
            ingredient.amount,
            style: const TextStyle(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}