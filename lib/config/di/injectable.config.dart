// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:scan_qr/config/di/module/dio.dart' as _i12;
import 'package:scan_qr/config/di/module/shared_preferences.dart' as _i13;
import 'package:scan_qr/features/login/data/datasources/local/login_local_datasource.dart'
    as _i7;
import 'package:scan_qr/features/login/data/datasources/remote/login_api_service.dart'
    as _i4;
import 'package:scan_qr/features/login/data/datasources/remote/login_datasource.dart'
    as _i5;
import 'package:scan_qr/features/login/data/repository/login_repository_impl.dart'
    as _i9;
import 'package:scan_qr/features/login/domain/repositories/login_repository.dart'
    as _i8;
import 'package:scan_qr/features/login/domain/usecases/login_use_case.dart'
    as _i10;
import 'package:scan_qr/features/login/presentations/cubit/login_cubit/login_cubit.dart'
    as _i11;
import 'package:shared_preferences/shared_preferences.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appDioInject = _$AppDioInject();
    final injectionModule = _$InjectionModule();
    gh.factory<_i3.Dio>(() => appDioInject.dio);
    gh.singleton<_i4.LoginApiService>(_i4.LoginApiService(gh<_i3.Dio>()));
    gh.factory<_i5.LoginRemoteDatasource>(
        () => _i5.LoginRemoteDatasourceImpl(gh<_i4.LoginApiService>()));
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i7.LoginLocalDatasource>(
        _i7.LoginLocalDatasourceImpl(gh<_i6.SharedPreferences>()));
    gh.factory<_i8.LoginRepository>(() => _i9.LoginRepositoryImpl(
          gh<_i5.LoginRemoteDatasource>(),
          gh<_i7.LoginLocalDatasource>(),
        ));
    gh.factory<_i10.LoginUseCase>(
        () => _i10.LoginUseCase(gh<_i8.LoginRepository>()));
    gh.factory<_i11.LoginCubit>(() => _i11.LoginCubit(gh<_i10.LoginUseCase>()));
    return this;
  }
}

class _$AppDioInject extends _i12.AppDioInject {}

class _$InjectionModule extends _i13.InjectionModule {}
