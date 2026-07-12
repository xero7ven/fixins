import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_shadows.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/pantry_category.dart';
import '../../../../entities/pantry_item.dart';
import 'pantry_item_row.dart';

class PantryCategories extends StatefulWidget {
  const PantryCategories({
    super.key,
    required this.categories,
    required this.pantryItems,
  });

  final List<PantryCategory> categories;
  final List<PantryItem> pantryItems;

  @override
  State<PantryCategories> createState() => _PantryCategoriesState();
}

class _PantryCategoriesState extends State<PantryCategories> {
  String? _expandedCategoryId = 'produce';

  void _toggleCategory(String categoryId) {
    setState(() {
      _expandedCategoryId =
          _expandedCategoryId == categoryId ? null : categoryId;
    });
  }

  @override
  Widget build(BuildContext context) {
    final totalItems = widget.categories.fold<int>(
      0,
      (sum, category) => sum + category.itemCount,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                '$totalItems items',
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          ...widget.categories.map(_buildCategory),
        ],
      ),
    );
  }

  Widget _buildCategory(PantryCategory category) {
    final isExpanded = _expandedCategoryId == category.id;

    final categoryItems = widget.pantryItems
        .where((item) => item.categoryId == category.id)
        .toList();

    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.xl),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          AppShadows.card,
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => _toggleCategory(category.id),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Row(
                children: [
                  Text(
                    category.icon,
                    style: const TextStyle(fontSize: 32),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          '${category.itemCount} items',
                          style: const TextStyle(
                            color: AppColors.textSecondary,
                          ),
                        ),
                        if (category.expiringCount > 0) ...[
                          const SizedBox(height: 5),
                          Text(
                            '${category.expiringCount} need attention',
                            style: const TextStyle(
                              color: AppColors.warning,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 250),
                    child: const Icon(Icons.keyboard_arrow_down),
                  ),
                ],
              ),
            ),
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 250),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: const SizedBox(
              width: double.infinity,
              height: 0,
            ),
            secondChild: Column(
              children: [
                const Divider(height: 1),
                if (categoryItems.isEmpty)
                  const Padding(
                    padding: EdgeInsets.all(AppSpacing.lg),
                    child: Text(
                      'No sample items in this category yet.',
                      style: TextStyle(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  )
                else
                  ...categoryItems.map(
                    (item) => PantryItemRow(
                      item: item,
                      onTap: () {},
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}