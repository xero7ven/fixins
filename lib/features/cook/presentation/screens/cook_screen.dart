import 'package:flutter/material.dart';

import '../widgets/home_header.dart';
import '../widgets/recipe_hero_card.dart';

class CookScreen extends StatelessWidget {
  const CookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(),
              RecipeHeroCard(),
            ],
          ),
        ),
      ),
    );
  }
}