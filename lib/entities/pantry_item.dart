enum PantryLocation {
  pantry,
  refrigerator,
  freezer,
}

enum QuantityLevel {
  full,
  plenty,
  half,
  low,
  empty,
}

enum ExpirationStatus {
  fresh,
  useSoon,
  expiring,
  expired,
}

class PantryItem {
  const PantryItem({
    required this.id,
    required this.name,
    required this.category,
    required this.location,
    required this.quantity,
    required this.expirationDate,
    required this.imageAsset,
  });

  final String id;
  final String name;
  final String category;

  final PantryLocation location;
  final QuantityLevel quantity;

  final DateTime expirationDate;

  final String imageAsset;

  ExpirationStatus get expirationStatus {
    final daysRemaining =
        expirationDate.difference(DateTime.now()).inDays;

    if (daysRemaining < 0) {
      return ExpirationStatus.expired;
    }

    if (daysRemaining <= 2) {
      return ExpirationStatus.expiring;
    }

    if (daysRemaining <= 5) {
      return ExpirationStatus.useSoon;
    }

    return ExpirationStatus.fresh;
  }
}