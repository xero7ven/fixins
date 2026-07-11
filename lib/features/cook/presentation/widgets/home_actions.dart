import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';
import '../../../../shared/widgets/button/primary_button.dart';
import '../../../../shared/widgets/button/secondary_button.dart';

class HomeActions extends StatelessWidget {
  const HomeActions({
    super.key,
    required this.onCookNow,
    required this.onAnotherIdea,
  });

  final VoidCallback onCookNow;
  final VoidCallback onAnotherIdea;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              label: 'Cook now',
              icon: Icons.arrow_forward,
              onPressed: onCookNow,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: SecondaryButton(
              label: 'Another idea',
              icon: Icons.refresh,
              onPressed: onAnotherIdea,
            ),
          ),
        ],
      ),
    );
  }
}