import 'package:flutter/material.dart' show GlobalKey, NavigatorState;
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/routers/app_router.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
// ignore: unsupported_provider_value
GoRouter router(RouterRef ref) {
  final key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  return GoRouter(
      navigatorKey: key,
      debugLogDiagnostics: true,
      initialLocation: ref.watch(initialRouteProvider),
      routes: $appRoutes,
      errorBuilder: (c, s) => ErrorRoute(error: s.error!).build(c, s));
}
