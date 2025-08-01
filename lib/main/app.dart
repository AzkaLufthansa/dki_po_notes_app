import 'package:flutter/material.dart';

import '../routes/app_route.dart';
import '../shared/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DKI PO Notes App',
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routerConfig: appRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
