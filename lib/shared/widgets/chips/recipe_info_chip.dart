import 'package:flutter/material.dart';

import '../../../app/theme/app_radius.dart';

class RecipeInfoChip extends StatelessWidget {
  const RecipeInfoChip({
    super.key,
    required this.icon,
    required this.label,
    this.backgroundColor = const Color(0x66000000),
    this.foregroundColor = Colors.white,
  });

  final IconData icon;
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 17,
            color: foregroundColor,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              color: foregroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}