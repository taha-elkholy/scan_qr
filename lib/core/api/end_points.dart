import 'package:flutter/material.dart' show immutable;

@immutable
class EndPoints {
  static const String baseUrl = 'https://fourthpyramidagcy.net/company/api/v1/';
  static const String login = '${baseUrl}login-scanner';
  static const String scan = '${baseUrl}scan';
  static const String myCodes = '${baseUrl}my-codes';
}
