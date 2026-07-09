import 'package:flutter/material.dart';

import 'app/router.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(const FixinsApp());
}

class FixinsApp extends StatelessWidget {
  const FixinsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fixins',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: appRouter,
);
  }
}