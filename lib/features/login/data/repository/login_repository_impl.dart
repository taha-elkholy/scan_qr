import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/error/app_failure.dart';
import 'package:scan_qr/core/error/exceptions.dart';
import 'package:scan_qr/core/error/return_app_failure.dart';
import 'package:scan_qr/features/login/data/datasources/local/login_local_datasource.dart';
import 'package:scan_qr/features/login/data/datasources/remote/login_datasource.dart';
import 'package:scan_qr/features/login/data/mappers/login_mapper.dart';
import 'package:scan_qr/features/login/data/mappers/user_mapper.dart';
import 'package:scan_qr/features/login/domain/entities/user.dart';
import 'package:scan_qr/features/login/domain/repositories/login_repository.dart';
import 'package:scan_qr/features/login/domain/usecases/login_use_case.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _loginRemoteDatasource;
  final LoginLocalDatasource _loginLocalDatasource;

  LoginRepositoryImpl(this._loginRemoteDatasource, this._loginLocalDatasource);

  @override
  Future<Either<AppFailure, User>> login(
      {required LoginParam loginParam}) async {
    try {
      final userModel =
          await _loginRemoteDatasource.login(loginModel: loginParam.toModel);

      await _loginLocalDatasource.saveToken(token: userModel.token);

      return right(userModel.user.fromModel);
    } on AppException catch (appException) {
      return left(returnAppFailure(appException));
    }
  }
}
