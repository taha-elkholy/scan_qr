import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/config/di/injectable.dart';
import 'package:scan_qr/config/routes/app_router.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/config/themes/app_theme.dart';
import 'package:scan_qr/core/utils/app_strings.dart';

// Todo Certificate need to be fix from the back end
/// do not use this in production
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  HttpOverrides.global = MyHttpOverrides();
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
