import '../../entities/expiring_item.dart';
import '../../entities/pantry_category.dart';
import '../../entities/shopping_summary.dart';
import '../../entities/weekly_stats.dart';
import '../../entities/pantry_item.dart';

class DashboardRepository {
  const DashboardRepository();

  WeeklyStats getWeeklyStats() {
    return const WeeklyStats(
      mealsWaiting: 5,
      mealsCooked: 6,
      moneySaved: 34,
      groceryTripsSaved: 4,
      itemsRescued: 7,
    );
  }

  List<ExpiringItem> getExpiringItems() {
    return const [
      ExpiringItem(
        id: '1',
        name: 'Greek Yogurt',
        icon: '🥣',
        daysLeft: 2,
        bestRecipe: 'Overnight Oats',
        otherRecipes: [
          'Smoothie',
          'Tzatziki',
        ],
      ),
      ExpiringItem(
        id: '2',
        name: 'Baby Spinach',
        icon: '🥬',
        daysLeft: 3,
        bestRecipe: 'Omelet',
        otherRecipes: [
          'Green Smoothie',
        ],
      ),
    ];
  }

  ShoppingSummary getShoppingSummary() {
    return const ShoppingSummary(
      missingIngredients: [
        'Parmesan',
        'Lemon',
        'Fresh Basil',
        'Heavy Cream',
      ],
      unlockedRecipes: 18,
    );
  }
  List<PantryCategory> getPantryCategories() {
  return const [
    PantryCategory(
      id: 'produce',
      icon: '🥬',
      name: 'Produce',
      itemCount: 12,
      expiringCount: 3,
    ),
    PantryCategory(
      id: 'protein',
      icon: '🥩',
      name: 'Protein',
      itemCount: 6,
      expiringCount: 1,
    ),
    PantryCategory(
      id: 'dairy',
      icon: '🥛',
      name: 'Dairy',
      itemCount: 8,
      expiringCount: 2,
    ),
    PantryCategory(
      id: 'pantry',
      icon: '🥫',
      name: 'Pantry',
      itemCount: 27,
      expiringCount: 0,
    ),
  ];
  }
  List<PantryItem> getPantryItems() {
  return const [
    PantryItem(
      id: 'spinach',
      name: 'Baby Spinach',
      categoryId: 'produce',
      quantity: PantryQuantity.low,
      daysUntilExpiration: 2,
      recipeCount: 12,
    ),
    PantryItem(
      id: 'tomatoes',
      name: 'Tomatoes',
      categoryId: 'produce',
      quantity: PantryQuantity.full,
      daysUntilExpiration: 5,
      recipeCount: 8,
    ),
    PantryItem(
      id: 'carrots',
      name: 'Carrots',
      categoryId: 'produce',
      quantity: PantryQuantity.medium,
      daysUntilExpiration: 7,
      recipeCount: 6,
    ),
    PantryItem(
      id: 'chicken',
      name: 'Chicken Breast',
      categoryId: 'protein',
      quantity: PantryQuantity.medium,
      daysUntilExpiration: 2,
      recipeCount: 18,
    ),
    PantryItem(
      id: 'yogurt',
      name: 'Greek Yogurt',
      categoryId: 'dairy',
      quantity: PantryQuantity.low,
      daysUntilExpiration: 2,
      recipeCount: 9,
    ),
  ];
}
}