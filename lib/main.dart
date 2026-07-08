import 'package:flutter/material.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(const FixinsApp());
}

class FixinsApp extends StatelessWidget {
  const FixinsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fixins',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const Scaffold(
        body: Center(
          child: Text(
            'Welcome to Fixins!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}