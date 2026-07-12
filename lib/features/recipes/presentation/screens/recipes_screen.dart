import 'package:flutter/material.dart';

import '../../../../data/repositories/recipes_repository.dart';
import '../widgets/recipe_card.dart';
import 'package:go_router/go_router.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const recipesRepository = RecipesRepository();
    final recipes = recipesRepository.getRecipes();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Recipes',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'AI matched to your pantry',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              ...recipes.map(
                (recipe) => RecipeCard(
                            recipe: recipe,
                            onTap: () {
                              context.push('/recipe/${recipe.id}');
                            },
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}