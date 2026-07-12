import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';

class RecipeMetrics extends StatelessWidget {
  const RecipeMetrics({
    super.key,
    required this.match,
    required this.time,
    required this.saved,
  });

  final int match;
  final int time;
  final double saved;

  Widget _metric(
    String title,
    String value,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _metric('MATCH', '$match%'),
        const SizedBox(width: AppSpacing.sm),
        _metric('COOK TIME', '${time}m'),
        const SizedBox(width: AppSpacing.sm),
        _metric('SAVED', '\$${saved.toStringAsFixed(2)}'),
      ],
    );
  }
}