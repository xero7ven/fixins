class RecipeIngredient {
  const RecipeIngredient({
    required this.name,
    required this.amount,
    required this.inPantry,
  });

  final String name;
  final String amount;
  final bool inPantry;
}