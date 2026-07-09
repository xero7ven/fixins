import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_radius.dart';
import '../../app/theme/app_spacing.dart';

class FixinsBottomNav extends StatelessWidget {
  const FixinsBottomNav({
    super.key,
    required this.child,
  });

  final Widget child;

  int _locationToIndex(String location) {
    if (location.startsWith('/pantry')) return 1;
    if (location.startsWith('/scan')) return 2;
    if (location.startsWith('/recipes')) return 3;
    if (location.startsWith('/shopping')) return 4;
    return 0;
  }

  void _onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/pantry');
        break;
      case 2:
        context.go('/scan');
        break;
      case 3:
        context.go('/recipes');
        break;
      case 4:
        context.go('/shopping');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _locationToIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            child: NavigationBar(
              selectedIndex: currentIndex,
              onDestinationSelected: (index) => _onTap(context, index),
              backgroundColor: AppColors.surface,
              indicatorColor: AppColors.primaryLight,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.inventory_2_outlined),
                  selectedIcon: Icon(Icons.inventory_2),
                  label: 'Pantry',
                ),
                NavigationDestination(
                  icon: Icon(Icons.document_scanner_outlined),
                  selectedIcon: Icon(Icons.document_scanner),
                  label: 'Scan',
                ),
                NavigationDestination(
                  icon: Icon(Icons.restaurant_menu_outlined),
                  selectedIcon: Icon(Icons.restaurant_menu),
                  label: 'Recipes',
                ),
                NavigationDestination(
                  icon: Icon(Icons.shopping_cart_outlined),
                  selectedIcon: Icon(Icons.shopping_cart),
                  label: 'Shopping',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}