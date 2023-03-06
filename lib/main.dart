import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/config/di/injectable.dart';
import 'package:scan_qr/config/routes/app_router.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/config/themes/app_theme.dart';
import 'package:scan_qr/core/utils/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            title: AppStrings.appName,
            theme: AppTheme.appThemeLight,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter.onGenerateRoute,
            initialRoute: AppRoutes.initialPageRoute,
          );
        });
  }
}
