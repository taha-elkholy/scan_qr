import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginLocalDatasource {
  Future<bool> saveToken({required String token});
}

@Singleton(as: LoginLocalDatasource)
class LoginLocalDatasourceImpl extends LoginLocalDatasource {
  final SharedPreferences _preferences;

  LoginLocalDatasourceImpl(this._preferences);

  @override
  Future<bool> saveToken({required String token}) async {
    return await _preferences.setString(
      AppStrings.tokenKey,
      token,
    );
  }
}
