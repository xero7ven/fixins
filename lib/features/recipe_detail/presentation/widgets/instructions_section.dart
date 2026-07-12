import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/recipe_detail.dart';
import 'instruction_card.dart';

class InstructionsSection extends StatelessWidget {
  const InstructionsSection({
    super.key,
    required this.recipe,
  });

  final RecipeDetail recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'How to Cook',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          ...recipe.instructions.map(
            (step) => InstructionCard(
              instruction: step,
            ),
          ),
        ],
      ),
    );
  }
}