import 'recipe_ingredient.dart';
import 'recipe_instruction.dart';

class RecipeDetail {
  const RecipeDetail({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.matchPercent,
    required this.cookTime,
    required this.servings,
    required this.difficulty,
    required this.foodWasteSavings,
    required this.expiringIngredients,
    required this.ingredients,
    required this.instructions,
  });

  final String id;
  final String title;
  final String subtitle;
  final String imagePath;

  final int matchPercent;
  final int cookTime;
  final int servings;
  final String difficulty;

  final double foodWasteSavings;

  final List<String> expiringIngredients;

  final List<RecipeIngredient> ingredients;

  final List<RecipeInstruction> instructions;
}