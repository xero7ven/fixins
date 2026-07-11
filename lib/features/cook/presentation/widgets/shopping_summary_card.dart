import 'package:flutter/material.dart';

import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/shopping_summary.dart';

class ShoppingSummaryCard extends StatelessWidget {
  const ShoppingSummaryCard({
    super.key,
    required this.summary,
    required this.onViewShopping,
  });

  final ShoppingSummary summary;
  final VoidCallback onViewShopping;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.lg),
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'SHOPPING',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              letterSpacing: 1.2,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            "You're only ${summary.missingIngredients.length} ingredients away from unlocking ${summary.unlockedRecipes} recipes.",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 18),

          ...summary.missingIngredients.map(
            (ingredient) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  const Icon(Icons.shopping_basket_outlined),
                  const SizedBox(width: 10),
                  Text(ingredient),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onViewShopping,
              child: const Text("View Shopping List"),
            ),
          ),
        ],
      ),
    );
  }
}