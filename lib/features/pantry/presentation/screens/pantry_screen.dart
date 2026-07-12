import 'package:flutter/material.dart';

import '../../../../data/repositories/dashboard_repository.dart';
import '../widgets/pantry_categories.dart';
import '../widgets/pantry_header.dart';
import '../widgets/pantry_search_bar.dart';
import '../widgets/pantry_stats_card.dart';

class PantryScreen extends StatelessWidget {
  const PantryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const dashboardRepo = DashboardRepository();
    final categories = dashboardRepo.getPantryCategories();

    final pantryItems = dashboardRepo.getPantryItems();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const PantryHeader(),
              const SizedBox(height: 24),
              const PantrySearchBar(),
              const SizedBox(height: 24),
              const PantryStatsCard(),
              const SizedBox(height: 24),
              PantryCategories(
                categories: categories,
                pantryItems: pantryItems,
                  ),
              const SizedBox(height: 32),
            ],
            
          ),
          
        ),
        
      ),
      
    );
    
  }
  
}