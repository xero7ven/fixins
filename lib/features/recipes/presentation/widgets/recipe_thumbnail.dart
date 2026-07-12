import 'package:flutter/material.dart';

import '../../../../app/theme/app_radius.dart';

class RecipeThumbnail extends StatelessWidget {
  const RecipeThumbnail({
    super.key,
    required this.emoji,
  });

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: 78,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7F5),
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Center(
        child: Text(
          emoji,
          style: const TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}