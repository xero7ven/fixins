import 'package:flutter/material.dart';

import '../../../../data/repositories/recipe_detail_repository.dart';
import '../widgets/recipe_hero.dart';
import '../widgets/recipe_stats_row.dart';
import '../widgets/recipe_insights.dart';
import '../widgets/ingredients_section.dart';
import '../widgets/instructions_section.dart';
import '../widgets/cook_button.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({
    super.key,
    this.recipeId = 'tuscan',
  });

  final String recipeId;

  @override
  Widget build(BuildContext context) {
    const repository = RecipeDetailRepository();
    final recipe = repository.getRecipe(recipeId);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeHero(
                recipe: recipe,
              ),
              const SizedBox(height: 24),
              RecipeStatsRow(
                recipe: recipe,
              ),
              const SizedBox(height: 24),
              RecipeInsights(
                recipe: recipe,
              ),
              const SizedBox(height: 24),
              IngredientsSection(
                recipe: recipe,
              ),
              const SizedBox(height: 24),



const SizedBox(height: 24),

InstructionsSection(
  recipe: recipe,
),

CookButton(
  onPressed: () {},
),
            ],
          ),
        ),
      ),
    );
  }
}