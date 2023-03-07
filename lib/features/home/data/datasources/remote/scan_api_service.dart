import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:scan_qr/core/api/end_points.dart';
import 'package:scan_qr/features/home/data/models/scan_code/scan_code_model.dart';
import 'package:scan_qr/features/home/data/models/scan_code_body/scan_code_body_model.dart';

part 'scan_api_service.g.dart';

@singleton
@RestApi()
abstract class ScanApiService {
  @factoryMethod
  factory ScanApiService(Dio dio) = _ScanApiService;

  @POST(EndPoints.scan)
  Future<ScanCodModel> scan({@Body() required ScanCodeBodyModel code});
}
