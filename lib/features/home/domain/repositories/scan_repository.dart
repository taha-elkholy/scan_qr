import 'package:dartz/dartz.dart';
import 'package:scan_qr/core/error/app_failure.dart';
import 'package:scan_qr/features/home/domain/entities/scan_code.dart';

abstract class ScanRepository {
  Future<Either<AppFailure, ScanCode>> scan({required String code});
}
