import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ofer/route/route_name.dart';
import 'package:ofer/src/feature/home/presentation/screen/home_screen.dart';
import 'package:ofer/src/feature/splash/splash_screen.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.slpash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: RouteName.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);
