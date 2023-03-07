import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/core/utils/app_colors.dart';

@immutable
class AppTheme {
  static get appThemeLight => ThemeData(
        primaryColor: AppColors.primary,
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: 'Inter',
        appBarTheme: AppBarTheme(
            elevation: 0,
            color: AppColors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
            iconTheme: IconThemeData(color: AppColors.darkGrey)),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          border: _drawBorder(),
          focusedBorder: _drawBorder(),
          enabledBorder: _drawBorder(),
          disabledBorder: _drawBorder(),
          errorBorder: _drawBorder(color: Colors.red),
          focusedErrorBorder: _drawBorder(color: Colors.red),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: AppColors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            color: AppColors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        cardTheme: CardTheme(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: AppColors.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.r),
          ),
        ),
      );

  static OutlineInputBorder _drawBorder({
    Color? color,
  }) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: BorderSide(
          color: color ?? AppColors.lightGrey,
        ),
      );
}
