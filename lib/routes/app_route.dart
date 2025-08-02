import 'package:go_router/go_router.dart';

import '../features/home/presentation/screens/home_screen.dart';
import '../features/splash/presentation/screens/splash_screen.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => SplashScreen()
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen()
      ),
    ]
  );
}