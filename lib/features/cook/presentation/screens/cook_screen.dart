import 'package:flutter/material.dart';

import '../../../../data/repositories/dashboard_repository.dart';
import '../../../../data/repositories/recipe_repository.dart';
import '../widgets/expiring_items_card.dart';
import '../widgets/home_actions.dart';
import '../widgets/home_header.dart';
import '../widgets/recipe_hero_card.dart';
import '../widgets/shopping_summary_card.dart';
import '../widgets/weekly_stats_card.dart';
import '../widgets/why_recipe_card.dart';

class CookScreen extends StatelessWidget {
  const CookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const recipeRepository = RecipeRepository();
    const dashboardRepo = DashboardRepository();

final recipe = recipeRepository.getTonightsPick();
final expiringItems = dashboardRepo.getExpiringItems();
final shoppingSummary = dashboardRepo.getShoppingSummary();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
  const HomeHeader(),

  RecipeHeroCard(recipe: recipe),

  WhyRecipeCard(
    reasons: recipe.recommendationReasons
        .map((r) => r.message)
        .toList(),
              ),

  HomeActions(
    onCookNow: () {},
    onAnotherIdea: () {},
              ),

  ExpiringItemsCard(
  items: expiringItems,
  onMakeRecipe: (item) {},
              ),

  ShoppingSummaryCard(
  summary: shoppingSummary,
  onViewShopping: () {},
),

  const WeeklyStatsCard(),

            ],
          ),
        ),
      ),
    );
  }
}