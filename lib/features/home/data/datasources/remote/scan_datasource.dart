import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/error/throw_app_exception.dart';
import 'package:scan_qr/features/home/data/datasources/remote/scan_api_service.dart';
import 'package:scan_qr/features/home/data/models/scan_code/scan_code_model.dart';
import 'package:scan_qr/features/home/data/models/scan_code_body/scan_code_body_model.dart';

abstract class ScanRemoteDatasource {
  Future<ScanCodModel> scan({required ScanCodeBodyModel code});
}

@Injectable(as: ScanRemoteDatasource)
class ScanRemoteDatasourceImpl extends ScanRemoteDatasource {
  final ScanApiService _scanApiService;

  ScanRemoteDatasourceImpl(this._scanApiService);

  @override
  Future<ScanCodModel> scan({required ScanCodeBodyModel code}) async {
    try {
      return await _scanApiService.scan(code: code);
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
