import 'package:flutter/material.dart';

import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_shadows.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../entities/recipe_instruction.dart';

class InstructionCard extends StatelessWidget {
  const InstructionCard({
    super.key,
    required this.instruction,
  });

  final RecipeInstruction instruction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.xl),
          boxShadow: const [
            AppShadows.card,
          ],
        ),
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 18,
              child: Text(
                '${instruction.step}',
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                instruction.text,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}