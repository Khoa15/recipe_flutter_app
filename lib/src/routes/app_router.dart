import 'package:flutter_recipe_app/src/screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  
  static final router = GoRouter(
    initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
}