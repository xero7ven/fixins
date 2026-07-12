import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/recipe_detail.dart';

class RecipeStatsRow extends StatelessWidget {
  const RecipeStatsRow({
    super.key,
    required this.recipe,
  });

  final RecipeDetail recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Row(
        children: [
          Expanded(
            child: _RecipeStatCard(
              icon: Icons.schedule,
              label: '${recipe.cookTime} min',
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: _RecipeStatCard(
              icon: Icons.people_outline,
              label: 'Serves ${recipe.servings}',
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: _RecipeStatCard(
              icon: Icons.local_fire_department_outlined,
              label: recipe.difficulty,
            ),
          ),
        ],
      ),
    );
  }
}

class _RecipeStatCard extends StatelessWidget {
  const _RecipeStatCard({
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppRadius.xl),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: AppColors.primary,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}