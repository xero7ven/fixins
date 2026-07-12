import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/pantry_item.dart';

class PantryItemRow extends StatelessWidget {
  const PantryItemRow({
    super.key,
    required this.item,
    required this.onTap,
  });

  final PantryItem item;
  final VoidCallback onTap;

  double get _quantityValue {
    switch (item.quantity) {
      case PantryQuantity.full:
        return 1.0;
      case PantryQuantity.medium:
        return 0.55;
      case PantryQuantity.low:
        return 0.2;
    }
  }

  String get _quantityLabel {
    switch (item.quantity) {
      case PantryQuantity.full:
        return 'Full';
      case PantryQuantity.medium:
        return 'Half';
      case PantryQuantity.low:
        return 'Low';
    }
  }

  Color get _expirationColor {
    if (item.daysUntilExpiration <= 2) {
      return AppColors.error;
    }

    if (item.daysUntilExpiration <= 5) {
      return AppColors.warning;
    }

    return AppColors.primary;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.lg),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.md,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.pill),
                    child: LinearProgressIndicator(
                      value: _quantityValue,
                      minHeight: 7,
                      backgroundColor: AppColors.border,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _quantityLabel,
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      const Icon(
                        Icons.restaurant_menu,
                        size: 16,
                        color: AppColors.primaryDark,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${item.recipeCount} recipes',
                        style: const TextStyle(
                          color: AppColors.primaryDark,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Text(
              item.daysUntilExpiration == 1
                  ? 'Tomorrow'
                  : '${item.daysUntilExpiration} days',
              style: TextStyle(
                color: _expirationColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}