import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/error/app_failure.dart';
import 'package:scan_qr/core/usecase/usecase.dart';
import 'package:scan_qr/features/home/domain/entities/scan_code.dart';
import 'package:scan_qr/features/home/domain/repositories/scan_repository.dart';

@injectable
class ScanUseCase implements UseCase<ScanCode, String> {
  final ScanRepository _repository;

  ScanUseCase(this._repository);

  @override
  Future<Either<AppFailure, ScanCode>> call(String param) {
    return _repository.scan(code: param);
  }
}
