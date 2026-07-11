import '../../entities/recipe.dart';

class RecipeRepository {
  const RecipeRepository();

  Recipe getTonightsPick() {
    return const Recipe(
      id: 'recipe_001',
      title: 'Creamy Tuscan Chicken',
      description: 'Recommended for tonight',
      cookTimeMinutes: 30,
      servings: 4,
      matchPercent: 96,
      estimatedSavings: 7.40,
      imageAsset: 'assets/images/tuscan_chicken.jpg',
      ingredients: [
        RecipeIngredient(
          name: 'Chicken breast',
          quantityText: '2',
          isInPantry: true,
        ),
        RecipeIngredient(
          name: 'Baby spinach',
          quantityText: '3 cups',
          isInPantry: true,
        ),
        RecipeIngredient(
          name: 'Sun-dried tomatoes',
          quantityText: '1/2 cup',
          isInPantry: false,
        ),
      ],
      steps: [],
      recommendationReasons: [
        RecipeRecommendationReason(
          message: 'Uses your baby spinach before it expires.',
        ),
        RecipeRecommendationReason(
          message: 'Only one ingredient is missing.',
        ),
        RecipeRecommendationReason(
          message: 'Prevents about \$7.40 in food waste.',
        ),
      ],
    );
  }
}