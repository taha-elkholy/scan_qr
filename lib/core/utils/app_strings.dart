import 'package:flutter/material.dart' show immutable;

@immutable
class AppStrings {
  static const String appName = 'Scan QR';
  static const String noRouteFound = 'No Route Found';

  /// login page
  static const String loginTitle = 'Login';
  static const String phoneHint = 'Enter your phone';
  static const String phoneValidation = 'Not Valid Phone Number';
  static const String passwordHint = 'password';
  static const String passwordValidation = 'Not Valid password';
  static const String forgotPassword = 'Forgot Password?';

  /// shared preferences
  static const String tokenKey = 'TOKEN_KEY';

  /// headers
  static const String accept = 'Accept';
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String authorization = 'Authorization';
  static const String bearer = 'Bearer';

  /// error messages
  static const String networkErrorMessage = 'No Internet Connection';
  static const String unAuthErrorMessage = 'Your Session End, Login Again';
  static const String unknownErrorMessage =
      'Something went wrong\nplease try again later';
  static const String inCorrectInputsErrorMessage =
      'Email or Password not correct';
  static const String notFoundErrorMessage = 'The Required Data Not Found';
}
