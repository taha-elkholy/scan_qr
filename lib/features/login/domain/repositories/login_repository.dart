import 'package:dartz/dartz.dart';
import 'package:scan_qr/core/error/app_failure.dart';
import 'package:scan_qr/features/login/domain/entities/user.dart';
import 'package:scan_qr/features/login/domain/usecases/login_use_case.dart';

abstract class LoginRepository {
  Future<Either<AppFailure, User>> login({required LoginParam loginParam});
}
