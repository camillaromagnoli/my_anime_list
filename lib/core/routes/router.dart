import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/root.dart';
import 'app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        print(state.location);
        return NoTransitionPage(
            child: RootNavigation(
          location: state.location,
          child: child,
        ));
      },
      routes: [
        ...homeRoutes,
        ...discoverRoutes,
        ...libraryRoutes,
        ...profileRoutes,
      ],
    ),
  ],
);
