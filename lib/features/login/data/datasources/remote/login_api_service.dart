import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:scan_qr/core/api/end_points.dart';
import 'package:scan_qr/features/login/data/models/login/login_model.dart';
import 'package:scan_qr/features/login/data/models/user/user_model.dart';

part 'auth_api_service.g.dart';

@singleton
@RestApi()
abstract class LoginApiService {
  @factoryMethod
  factory LoginApiService(Dio dio) = _AuthApiService;

  @POST(EndPoints.login)
  Future<UserModel> login({@Body() required LoginModel loginModel});
}
