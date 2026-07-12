class PantryCategory {
  const PantryCategory({
    required this.id,
    required this.icon,
    required this.name,
    required this.itemCount,
    required this.expiringCount,
  });

  final String id;
  final String icon;
  final String name;
  final int itemCount;
  final int expiringCount;
}