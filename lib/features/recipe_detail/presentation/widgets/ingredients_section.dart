import 'package:flutter/material.dart';

import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/recipe_detail.dart';
import 'ingredient_row.dart';

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({
    super.key,
    required this.recipe,
  });

  final RecipeDetail recipe;

  @override
  Widget build(BuildContext context) {
    final pantryItems =
        recipe.ingredients.where((i) => i.inPantry).toList();

    final shoppingItems =
        recipe.ingredients.where((i) => !i.inPantry).toList();

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.xl),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ingredients",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "✓ In Your Pantry",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 12),

            ...pantryItems.map(
              (ingredient) => IngredientRow(
                ingredient: ingredient,
              ),
            ),

            const SizedBox(height: 24),

            const Divider(),

            const SizedBox(height: 24),

            const Text(
              "🛒 Need To Buy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),

            const SizedBox(height: 12),

            ...shoppingItems.map(
              (ingredient) => IngredientRow(
                ingredient: ingredient,
              ),
            ),
          ],
        ),
      ),
    );
  }
}