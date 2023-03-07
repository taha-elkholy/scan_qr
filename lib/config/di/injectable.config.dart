// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:scan_qr/config/di/module/dio.dart' as _i18;
import 'package:scan_qr/config/di/module/shared_preferences.dart' as _i19;
import 'package:scan_qr/features/home/data/datasources/remote/scan_api_service.dart'
    as _i6;
import 'package:scan_qr/features/home/data/datasources/remote/scan_datasource.dart'
    as _i7;
import 'package:scan_qr/features/home/data/repository/scan_repository_impl.dart'
    as _i9;
import 'package:scan_qr/features/home/domain/repositories/scan_repository.dart'
    as _i8;
import 'package:scan_qr/features/home/domain/use_cases/scan_use_case.dart'
    as _i10;
import 'package:scan_qr/features/home/presentation/cubit/home_cubit.dart'
    as _i12;
import 'package:scan_qr/features/login/data/datasources/local/login_local_datasource.dart'
    as _i13;
import 'package:scan_qr/features/login/data/datasources/remote/login_api_service.dart'
    as _i4;
import 'package:scan_qr/features/login/data/datasources/remote/login_datasource.dart'
    as _i5;
import 'package:scan_qr/features/login/data/repository/login_repository_impl.dart'
    as _i15;
import 'package:scan_qr/features/login/domain/repositories/login_repository.dart'
    as _i14;
import 'package:scan_qr/features/login/domain/usecases/login_use_case.dart'
    as _i16;
import 'package:scan_qr/features/login/presentations/cubit/login_cubit/login_cubit.dart'
    as _i17;
import 'package:shared_preferences/shared_preferences.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
    gh.singleton<_i6.ScanApiService>(_i6.ScanApiService(gh<_i3.Dio>()));
    gh.factory<_i7.ScanRemoteDatasource>(
        () => _i7.ScanRemoteDatasourceImpl(gh<_i6.ScanApiService>()));
    gh.factory<_i8.ScanRepository>(
        () => _i9.ScanRepositoryImpl(gh<_i7.ScanRemoteDatasource>()));
    gh.factory<_i10.ScanUseCase>(
        () => _i10.ScanUseCase(gh<_i8.ScanRepository>()));
    await gh.factoryAsync<_i11.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.factory<_i12.HomeCubit>(() => _i12.HomeCubit(gh<_i10.ScanUseCase>()));
    gh.singleton<_i13.LoginLocalDatasource>(
        _i13.LoginLocalDatasourceImpl(gh<_i11.SharedPreferences>()));
    gh.factory<_i14.LoginRepository>(() => _i15.LoginRepositoryImpl(
          gh<_i5.LoginRemoteDatasource>(),
          gh<_i13.LoginLocalDatasource>(),
        ));
    gh.factory<_i16.LoginUseCase>(
        () => _i16.LoginUseCase(gh<_i14.LoginRepository>()));
    gh.factory<_i17.LoginCubit>(() => _i17.LoginCubit(gh<_i16.LoginUseCase>()));
    return this;
  }
}

class _$AppDioInject extends _i18.AppDioInject {}

class _$InjectionModule extends _i19.InjectionModule {}
