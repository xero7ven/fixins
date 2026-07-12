import '../../entities/recipe_detail.dart';
import '../../entities/recipe_ingredient.dart';
import '../../entities/recipe_instruction.dart';

class RecipeDetailRepository {
  const RecipeDetailRepository();

  RecipeDetail getRecipe(String id) {
    return const RecipeDetail(
      id: 'tuscan',
      title: 'Creamy Tuscan Chicken',
      subtitle: 'Recommended for tonight',
      imagePath: 'assets/images/recipes/tuscan_chicken_hero.png',
      matchPercent: 92,
      cookTime: 30,
      servings: 4,
      difficulty: 'Easy',
      foodWasteSavings: 7.40,
      expiringIngredients: [
        'Baby spinach',
        'Heavy cream',
      ],
      ingredients: [
        RecipeIngredient(
          name: 'Chicken Breast',
          amount: '2 breasts',
          inPantry: true,
        ),
        RecipeIngredient(
          name: 'Baby Spinach',
          amount: '3 cups',
          inPantry: true,
        ),
        RecipeIngredient(
          name: 'Heavy Cream',
          amount: '1 cup',
          inPantry: true,
        ),
        RecipeIngredient(
          name: 'Parmesan Cheese',
          amount: '½ cup',
          inPantry: false,
        ),
        RecipeIngredient(
          name: 'Sun-dried Tomatoes',
          amount: '½ cup',
          inPantry: false,
        ),
      ],
      instructions: [
  RecipeInstruction(
    step: 1,
    text: 'Season the chicken with salt and pepper.',
  ),
  RecipeInstruction(
    step: 2,
    text: 'Sear chicken in olive oil until golden.',
  ),
  RecipeInstruction(
    step: 3,
    text: 'Add garlic and sun-dried tomatoes.',
  ),
  RecipeInstruction(
    step: 4,
    text: 'Stir in cream and parmesan.',
  ),
  RecipeInstruction(
    step: 5,
    text: 'Fold in spinach until wilted and serve.',
  ),
],
    );
  }
}