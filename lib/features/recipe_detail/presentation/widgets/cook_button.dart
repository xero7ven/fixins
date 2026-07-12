import 'package:flutter/material.dart';

import '../../../../shared/widgets/buttons/primary_button.dart';

class CookButton extends StatelessWidget {
  const CookButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 120),
      child: PrimaryButton(
        label: 'Cook Step-by-Step',
        icon: Icons.play_arrow,
        onPressed: onPressed,
      ),
    );
  }
}