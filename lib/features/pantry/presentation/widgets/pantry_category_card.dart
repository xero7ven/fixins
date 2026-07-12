import 'package:flutter/material.dart';

import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_shadows.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../entities/pantry_category.dart';

class PantryCategoryCard extends StatelessWidget {
  const PantryCategoryCard({
    super.key,
    required this.category,
    required this.onTap,
  });

  final PantryCategory category;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppRadius.xl),
        elevation: 0,
        child: InkWell(
          borderRadius: BorderRadius.circular(AppRadius.xl),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.xl),
              boxShadow: const [
                AppShadows.card,
              ],
            ),
            child: Row(
              children: [
                Text(
                  category.icon,
                  style: const TextStyle(fontSize: 34),
                ),

                const SizedBox(width: AppSpacing.md),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.name,
                        style: AppTypography.title,
                      ),

                      const SizedBox(height: 4),

                      Text(
                        '${category.itemCount} items',
                        style: AppTypography.body.copyWith(
                          color: Colors.grey.shade600,
                        ),
                      ),

                      if (category.expiringCount > 0)
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            '${category.expiringCount} expiring this week',
                            style: const TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}