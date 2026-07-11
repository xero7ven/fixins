import '../../entities/expiring_item.dart';
import '../../entities/shopping_summary.dart';
import '../../entities/weekly_stats.dart';

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
}