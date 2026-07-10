class RecipeIngredient {
  const RecipeIngredient({
    required this.name,
    required this.quantityText,
    required this.isInPantry,
    this.pantryItemId,
    this.substitution,
  });

  final String name;
  final String quantityText;
  final bool isInPantry;
  final String? pantryItemId;
  final String? substitution;
}

class RecipeStep {
  const RecipeStep({
    required this.stepNumber,
    required this.instruction,
    this.durationMinutes,
  });

  final int stepNumber;
  final String instruction;
  final int? durationMinutes;
}

class RecipeRecommendationReason {
  const RecipeRecommendationReason({
    required this.message,
    this.pantryItemId,
  });

  final String message;
  final String? pantryItemId;
}

class Recipe {
  const Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.cookTimeMinutes,
    required this.servings,
    required this.matchPercent,
    required this.estimatedSavings,
    required this.ingredients,
    required this.steps,
    required this.recommendationReasons,
    required this.imageAsset,
    this.isFavorite = false,
  });

  final String id;
  final String title;
  final String description;
  final int cookTimeMinutes;
  final int servings;
  final int matchPercent;
  final double estimatedSavings;
  final List<RecipeIngredient> ingredients;
  final List<RecipeStep> steps;
  final List<RecipeRecommendationReason> recommendationReasons;
  final String imageAsset;
  final bool isFavorite;

  int get missingIngredientCount =>
      ingredients.where((ingredient) => !ingredient.isInPantry).length;

  bool get canCookNow => missingIngredientCount == 0;
}