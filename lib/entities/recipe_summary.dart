class RecipeSummary {
  const RecipeSummary({
    required this.id,
    required this.title,
    required this.matchPercent,
    required this.cookTime,
    required this.missingIngredients,
    required this.moneySaved,
    required this.expiringWarning,
    required this.reasons,
    required this.emoji,
  });

  final String id;
  final String title;
  final int matchPercent;
  final int cookTime;
  final int missingIngredients;
  final double moneySaved;
  final String expiringWarning;
  final List<String> reasons;
  final String emoji;
}