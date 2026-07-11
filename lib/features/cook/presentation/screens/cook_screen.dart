import 'package:flutter/material.dart';

import '../../../../data/repositories/recipe_repository.dart';
import '../widgets/home_header.dart';
import '../widgets/recipe_hero_card.dart';

class CookScreen extends StatelessWidget {
  const CookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const recipeRepository = RecipeRepository();
    final recipe = recipeRepository.getTonightsPick();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              RecipeHeroCard(recipe: recipe),
            ],
          ),
        ),
      ),
    );
  }
}