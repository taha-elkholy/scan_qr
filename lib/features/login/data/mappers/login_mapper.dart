import 'package:scan_qr/features/login/data/models/login/login_model.dart';
import 'package:scan_qr/features/login/domain/usecases/login_use_case.dart';

extension LoginMapper on LoginParam {
  LoginModel get toModel => LoginModel(
        email: email,
        password: password,
      );
}
