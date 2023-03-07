import 'package:flutter/material.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:scan_qr/features/home/presentation/pages/home_page.dart';
import 'package:scan_qr/features/login/presentations/pages/login/login_page.dart';
import 'package:scan_qr/features/scanning_result/presentation/pages/scanning_result_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initialPageRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
          settings: settings,
        );
      case AppRoutes.homePageRout:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      case AppRoutes.scanningResultsPageRout:
        return MaterialPageRoute(
          builder: (_) => const ScanningResultPage(),
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
