class ExpiringItem {
  const ExpiringItem({
    required this.id,
    required this.name,
    required this.icon,
    required this.daysLeft,
    required this.bestRecipe,
    required this.otherRecipes,
  });

  final String id;
  final String name;
  final String icon;

  final int daysLeft;

  final String bestRecipe;

  final List<String> otherRecipes;
}