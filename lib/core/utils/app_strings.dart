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

  /// home page
  static const String scanQRCode = 'Scan OR code';
  static const String scanQRCodeDescription =
      'Place qr code inside the frame to scan please avoid shake to get results quickly';
  static const String scanningCode = 'Scanning Code...';
  static const String placeCameraCode = 'Place Camera Code';

  /// scanning result
  static const String scanningResult = 'Scanning Result';
  static const String scanningResultDescription =
      'Proreader will Keep your last 10 days historyto keep your all scared history pleasepurched our pro package';
  static const String send = 'Send';

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
