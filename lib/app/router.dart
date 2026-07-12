import 'package:go_router/go_router.dart';

import '../features/cook/presentation/screens/cook_screen.dart';
import '../features/pantry/presentation/screens/pantry_screen.dart';
import '../features/recipe_detail/presentation/screens/recipe_detail_screen.dart';
import '../features/recipes/presentation/screens/recipes_screen.dart';
import '../features/scan/presentation/screens/scan_screen.dart';
import '../features/shopping/presentation/screens/shopping_screen.dart';
import '../shared/navigation/fixins_bottom_nav.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return FixinsBottomNav(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const CookScreen(),
        ),
        GoRoute(
          path: '/pantry',
          builder: (context, state) => const PantryScreen(),
        ),
        GoRoute(
          path: '/scan',
          builder: (context, state) => const ScanScreen(),
        ),
        GoRoute(
          path: '/recipes',
          builder: (context, state) => const RecipesScreen(),
        ),
        GoRoute(
          path: '/shopping',
          builder: (context, state) => const ShoppingScreen(),
        ),
      ],
    ),

    GoRoute(
      path: '/recipe/:id',
      builder: (context, state) {
        final recipeId = state.pathParameters['id']!;

        return RecipeDetailScreen(
          recipeId: recipeId,
        );
      },
    ),
  ],
);