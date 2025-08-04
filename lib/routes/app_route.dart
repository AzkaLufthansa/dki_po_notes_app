import 'package:go_router/go_router.dart';

import '../features/order/presentation/screens/add_order_screen.dart';
import '../features/order/presentation/screens/home_screen.dart';
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
      GoRoute(
        path: '/add_order',
        builder: (context, state) => AddOrderScreen()
      ),
    ]
  );
}