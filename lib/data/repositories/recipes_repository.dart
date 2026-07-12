import '../../entities/recipe_summary.dart';

class RecipesRepository {
  const RecipesRepository();

  List<RecipeSummary> getRecipes() {
    return const [
      RecipeSummary(
        id: 'tuscan',
        title: 'Creamy Tuscan Chicken',
        emoji: '🍗',
        matchPercent: 92,
        cookTime: 25,
        missingIngredients: 1,
        moneySaved: 6.40,
        expiringWarning: 'Saves 2 ingredients expiring in 2 days',
        reasons: [
          'Uses your baby spinach before it expires.',
          'Uses your whole milk before it expires.',
          'Only one ingredient is missing.',
          'Saves about \$6.40 in food waste.',
        ],
      ),
      RecipeSummary(
        id: 'salmon',
        title: 'Lemon Herb Salmon',
        emoji: '🐟',
        matchPercent: 80,
        cookTime: 20,
        missingIngredients: 2,
        moneySaved: 4.20,
        expiringWarning: 'Saves 1 ingredient expiring in 4 days',
        reasons: [
          'Uses your lemons before they expire.',
          'High pantry match.',
        ],
      ),
    ];
  }
}