enum PantryQuantity {
  full,
 medium,
 low,
}

class PantryItem {
  const PantryItem({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.quantity,
    required this.daysUntilExpiration,
    required this.recipeCount,
  });

  final String id;
  final String name;
  final String categoryId;
  final PantryQuantity quantity;
  final int daysUntilExpiration;
  final int recipeCount;
}