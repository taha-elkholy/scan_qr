import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/error/app_failure.dart';
import 'package:scan_qr/core/usecase/usecase.dart';
import 'package:scan_qr/features/login/domain/entities/user.dart';
import 'package:scan_qr/features/login/domain/repositories/login_repository.dart';

@injectable
class LoginUseCase implements UseCase<User, LoginParam> {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<AppFailure, User>> call(LoginParam param) {
    return _repository.login(loginParam: param);
  }
}

class LoginParam extends Equatable {
  final String email;
  final String password;

  const LoginParam({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
