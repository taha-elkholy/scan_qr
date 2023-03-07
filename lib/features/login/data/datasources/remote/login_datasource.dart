
import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/error/throw_app_exception.dart';
import 'package:scan_qr/features/login/data/datasources/remote/login_api_service.dart';
import 'package:scan_qr/features/login/data/models/login/login_model.dart';
import 'package:scan_qr/features/login/data/models/user/user_model.dart';

abstract class LoginRemoteDatasource {
  Future<UserModel> login({required LoginModel loginModel});
}

@Injectable(as: LoginRemoteDatasource)
class LoginRemoteDatasourceImpl extends LoginRemoteDatasource {
  final LoginApiService _loginApiService;

  LoginRemoteDatasourceImpl(this._loginApiService);

  @override
  Future<UserModel> login({required LoginModel loginModel}) async {
    try {
      return await _loginApiService.login(loginModel: loginModel);
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
