import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_shadows.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/recipe_summary.dart';
import 'recipe_match_badge.dart';
import 'recipe_metrics.dart';
import 'recipe_reason_list.dart';
import 'recipe_thumbnail.dart';

class RecipeCard extends StatefulWidget {
  const RecipeCard({
    super.key,
    required this.recipe,
    required this.onTap,
  });

  final RecipeSummary recipe;
  final VoidCallback onTap;

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  bool _showReasons = false;

  @override
  Widget build(BuildContext context) {
    final recipe = widget.recipe;

    final ingredientLabel = recipe.missingIngredients == 1
        ? 'Only one ingredient missing'
        : '${recipe.missingIngredients} ingredients missing';

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.xl),
          boxShadow: const [
            AppShadows.card,
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: widget.onTap,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppRadius.xl),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecipeThumbnail(
                      emoji: recipe.emoji,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recipe.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              height: 1.15,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Text(
                            '${recipe.cookTime} min',
                            style: const TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Text(
                            ingredientLabel,
                            style: const TextStyle(
                              color: AppColors.primaryDark,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    RecipeMatchBadge(
                      matchPercent: recipe.matchPercent,
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              color: const Color(0xFFFFF7E8),
              child: Row(
                children: [
                  const Icon(
                    Icons.warning_amber_rounded,
                    color: AppColors.warning,
                    size: 20,
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      recipe.expiringWarning,
                      style: const TextStyle(
                        color: Color(0xFF8A5700),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: () {
                setState(() {
                  _showReasons = !_showReasons;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                  vertical: AppSpacing.md,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Why this recipe?',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    AnimatedRotation(
                      turns: _showReasons ? 0.5 : 0,
                      duration: const Duration(milliseconds: 250),
                      child: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
              ),
            ),

            AnimatedCrossFade(
              duration: const Duration(milliseconds: 250),
              crossFadeState: _showReasons
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: const SizedBox(
                width: double.infinity,
                height: 0,
              ),
              secondChild: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.lg,
                  0,
                  AppSpacing.lg,
                  AppSpacing.md,
                ),
                child: RecipeReasonList(
                  reasons: recipe.reasons,
                ),
              ),
            ),

            const Divider(height: 1),

            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: RecipeMetrics(
                match: recipe.matchPercent,
                time: recipe.cookTime,
                saved: recipe.moneySaved,
              ),
            ),
          ],
        ),
      ),
    );
  }
}