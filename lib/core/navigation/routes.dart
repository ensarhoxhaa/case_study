import 'package:case_study/features/discover/presentation/screens/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef AppRoute = String;

abstract class AppRoutes {
  static AppRoute get discover => '/discover';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter= GoRouter(
  initialLocation: AppRoutes.discover,
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: AppRoutes.discover,
      builder: (context, state) => DiscoverScreen(),
    ),
  ],
);
