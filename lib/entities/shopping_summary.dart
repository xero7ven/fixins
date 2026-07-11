class ShoppingSummary {
  const ShoppingSummary({
    required this.missingIngredients,
    required this.unlockedRecipes,
  });

  final List<String> missingIngredients;
  final int unlockedRecipes;
}