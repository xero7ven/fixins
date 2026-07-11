class WeeklyStats {
  const WeeklyStats({
    required this.mealsWaiting,
    required this.mealsCooked,
    required this.moneySaved,
    required this.groceryTripsSaved,
    required this.itemsRescued,
  });

  final int mealsWaiting;
  final int mealsCooked;
  final double moneySaved;
  final int groceryTripsSaved;
  final int itemsRescued;
}