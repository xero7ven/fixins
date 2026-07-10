import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.lg,
        AppSpacing.lg,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good morning, Alex 👋', style: AppTextStyles.heading),
          const SizedBox(height: AppSpacing.sm),
          Text(
            "Here's your pantry today",
            style: AppTextStyles.caption.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}