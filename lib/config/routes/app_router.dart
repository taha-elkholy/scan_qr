import 'package:flutter/material.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:scan_qr/features/login/presentations/pages/login/login_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initialPageRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
          settings: settings,
        );
      default:
        return _unDefinedRoute(settings);
    }
  }

  static Route? _unDefinedRoute(RouteSettings settings) => MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(AppStrings.noRouteFound),
          ),
        ),
        settings: settings,
      );
}
