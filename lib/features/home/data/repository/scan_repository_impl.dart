import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/error/app_failure.dart';
import 'package:scan_qr/core/error/exceptions.dart';
import 'package:scan_qr/core/error/return_app_failure.dart';
import 'package:scan_qr/features/home/data/datasources/remote/scan_datasource.dart';
import 'package:scan_qr/features/home/data/mappers/scan_body_mapper.dart';
import 'package:scan_qr/features/home/data/mappers/scan_code_mapper.dart';
import 'package:scan_qr/features/home/domain/entities/scan_code.dart';
import 'package:scan_qr/features/home/domain/repositories/scan_repository.dart';

@Injectable(as: ScanRepository)
class ScanRepositoryImpl implements ScanRepository {
  final ScanRemoteDatasource _scanRemoteDatasource;

  ScanRepositoryImpl(this._scanRemoteDatasource);

  @override
  Future<Either<AppFailure, ScanCode>> scan({required String code}) async {
    try {
      final scanCodeModel = await _scanRemoteDatasource.scan(code: code.toModel);

      return right(scanCodeModel.fromModel);
    } on AppException catch (appException) {
      return left(returnAppFailure(appException));
    }
  }
}
