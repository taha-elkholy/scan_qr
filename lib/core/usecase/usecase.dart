import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:scan_qr/core/error/app_failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppFailure, Type>> call(Params param);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
