// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:scan_qr/config/di/module/dio.dart' as _i5;
import 'package:scan_qr/config/di/module/shared_preferences.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

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
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    return this;
  }
}

class _$AppDioInject extends _i5.AppDioInject {}

class _$InjectionModule extends _i6.InjectionModule {}
